//
//  TalentListViewController.swift
//  TalentGame
//
//  Created by Puneet Gupta on 20/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

class TalentListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var titleName: String?
    var colorCode: String?
    var dimensionId: Int?
    var talents = [Talent]()
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var label_titleName: UILabel!
    
    @IBOutlet weak var label_colorCode: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = titleName ?? "app_name".localized
        
        dimensionId != nil ? bindTalents() : bindAllTalents()
        // Register custom cell
//        let nib = UINib(nibName: "TalentListTableViewCell", bundle: nil)
//        self.tableView.register(nib, forCellReuseIdentifier: "cellIdentifier")
    
        //tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //1
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // 2
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.talents.count
    }
    
    //3
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            // Table view cells are reused and should be dequeued using a cell identifier.
            let cellIdentifier = "cellIdentifier"
            
        let cell:TalentListTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TalentListTableViewCell
            // Fetches the appropriate talent for the data source layout.
            let talent = self.talents[indexPath.row]
            
            let image123_pic = "artboard_123_\(talent.dimensionId)_\(talent.talentId)"
            let image789_pic = "artboard_789_\(talent.dimensionId)_\(talent.talentId)"
        
            cell.image123?.image = UIImage(named: image123_pic)
            cell.labelHeader123?.text = talent.title123
            cell.labelFooter123?.text = talent.talentName
            cell.labelTalentName?.text = talent.talentName
            cell.image789?.image = UIImage(named: image789_pic)
            cell.labelHeader789?.text = talent.title789
            cell.labelFooter789?.text = talent.talentName
            return cell
    }
    
    // 4
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row \(indexPath.row) selected")
    }
    
    // 5
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    func bindTalents()
    {
        self.talents = TalentService.getTalentsByDimensionId(dimensionId: dimensionId!)
    }
    
    func bindAllTalents()
    {
        self.talents = TalentService.getAllTalents().sorted(by: { $0.talentName < $1.talentName} );
    }
    
}
