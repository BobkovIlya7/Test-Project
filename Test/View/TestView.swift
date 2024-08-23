//
//  TestView.swift
//  Test
//
//  Created by Ilya Bobkov on 22.08.24.
//

import UIKit

class TestView: UIView {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configure()
    }
    
    func configure() {
        // configure table view
        print("")
    }
}
