//
//  TableViewCell.swift
//  UITableViewAddText
//
//  Created by Андрей Сапожников on 09.04.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var textOutputLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func set(object: Text) {
        self.textOutputLabel.text = object.text
    }
}
