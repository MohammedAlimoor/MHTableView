//
//  ExampleTableViewCell.swift
//  MHTableView_Example
//
//  Created by mac on 3/12/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class ExampleTableViewCell: UITableViewCell {
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_number: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
