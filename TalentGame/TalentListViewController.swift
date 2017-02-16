//
//  TalentListViewController.swift
//  TalentGame
//
//  Created by Puneet Gupta on 20/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

class TalentListViewController: UITableViewController {

    var titleName: String?
    var colorCode: String?
    var dimensionId: Int?
    
    var talents = [Talent]()
    
    @IBOutlet weak var label_titleName: UILabel!
    
    @IBOutlet weak var label_colorCode: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = titleName
        
        talents = TalentService.getTalentsByDimensionId(dimensionId: dimensionId!)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return talents.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "TalentListTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? TalentListTableViewCell  else {
            fatalError("The dequeued cell is not an instance of TalentListTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let talent = talents[indexPath.row]
        
        let image123_pic = "artboard_123_\(talent.dimensionId)_\(talent.talentId)"
        let image789_pic = "artboard_789_\(talent.dimensionId)_\(talent.talentId)"
        
        let image123:UIImage = UIImage(named: image123_pic)!
        let image789:UIImage = UIImage(named: image789_pic)!

        cell.image123?.image = image123
        cell.labelTalentName?.text = talent.talentName
        cell.image789?.image = image789
        return cell
    }

}
