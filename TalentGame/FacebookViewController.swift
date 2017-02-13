//
//  FacebookViewController.swift
//  TalentGame
//
//  Created by Puneet Gupta on 09/02/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

class FacebookViewController: UIViewController {

    @IBOutlet weak var webViewInstance: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        webViewInstance.loadRequest(NSURLRequest(url: NSURL(string: "https://www.facebook.com/pg/tmamethode/events/") as! URL) as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
