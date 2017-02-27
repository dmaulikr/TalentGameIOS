//
//  MapViewController.swift
//  TalentGame
//
//  Created by Rohit Dabra on 22/02/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit
class InfoViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var emailLabel: UITextView!
    @IBOutlet weak var websiteLabel: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "btn_info".localized;
        setLabels()
        
    }

    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setLabels()
    {
        emailLabel.text = "info@tmamethod.com";
        websiteLabel.text = "http://www.tmamethod.com";
        titleLabel.text = "app_name".localized;
        textLabel.text = "AppInfo".localized;
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
