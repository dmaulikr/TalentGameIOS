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
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as!TalentListTableViewCell
        // Fetches the appropriate talent for the data source layout.
        let talent = talents[indexPath.row]
        
        let image123_pic = "artboard_123_\(talent.dimensionId)_\(talent.talentId)"
        let image789_pic = "artboard_789_\(talent.dimensionId)_\(talent.talentId)"
        

        cell.image123?.image = UIImage(named: image123_pic)
        cell.labelTalentName?.text = talent.talentName
        cell.image789?.image = UIImage(named: image789_pic)
        return cell
    }

}
