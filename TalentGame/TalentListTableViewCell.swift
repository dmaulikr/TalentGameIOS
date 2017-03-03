//
//  TalentListTableViewCell.swift
//  TalentGame
//
//  Created by Puneet Gupta on 31/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

class TalentListTableViewCell: UITableViewCell, UITextFieldDelegate {

    @IBOutlet var image123: UIImageView!
    @IBOutlet var labelTalentName: UILabel!
    @IBOutlet var image789: UIImageView!
    
    @IBOutlet weak var labelHeader123: UILabel!
    @IBOutlet weak var labelFooter123: UILabel!
    @IBOutlet weak var labelHeader789: UILabel!
    @IBOutlet weak var labelFooter789: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
