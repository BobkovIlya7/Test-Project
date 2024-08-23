//
//  TestTableViewCell.swift
//  Test
//
//  Created by Ilya Bobkov on 23.08.24.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel?
    
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: nil) }
}
