//
//  TalentListTableViewCell.swift
//  TalentGame
//
//  Created by Puneet Gupta on 31/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

class TalentListTableViewCell: UITableViewCell {

    @IBOutlet var image123: UIImageView!
    @IBOutlet var labelTalentName: UILabel!
    @IBOutlet var image789: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
