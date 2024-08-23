//
//  ViewController.swift
//  Test
//
//  Created by Ilya Bobkov on 22.08.24.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView?
    
    private var testModel = TestItems.getItems()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView() {
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.register(TestTableViewCell.nib,
                           forCellReuseIdentifier: TestTableViewCell.identifier)
        tableView?.separatorStyle = .none
    }
}

extension TestViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testModel.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TestTableViewCell.identifier,
                                                       for: indexPath) as? TestTableViewCell else {
            return UITableViewCell()
        }
        cell.titleLabel?.text = testModel.items[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = testModel.items[indexPath.row]
        showAlert(title: "\(item.name + " " + item.surname)")
    }
}

extension TestViewController {
    func showAlert(title: String) {
        let alertController = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
