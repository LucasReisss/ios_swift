//
//  MyTableViewCell.swift
//  Project01
//
//  Created by Lucas da Silva Reis on 24/02/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var labelView: UILabel!
    @IBOutlet var liImagemView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
