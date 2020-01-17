 //
//  TableViewCell.swift
//  MengenalBuah
//
//  Created by Gilang Ramadhan on 15/01/20.
//  Copyright © 2020 Dicoding Indonesia. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
