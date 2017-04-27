//
//  LinkedInViewController.swift
//  TalentGame
//
//  Created by Puneet Gupta on 09/02/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

class LinkedInViewController: UIViewController {

    @IBOutlet weak var Activity: UIActivityIndicatorView!
    @IBOutlet weak var webViewInstance: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        webViewInstance.loadRequest(NSURLRequest(url: NSURL(string: "https://www.linkedin.com/groups?mostPopular=&gid=112628")! as URL) as URLRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func webViewDidStartLoad(_ webView: UIWebView)
    {
        // here show your indicator
        Activity.startAnimating()
        Activity.isHidden = false;
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        // here hide it
        Activity.stopAnimating()
        Activity.isHidden = true;
    }

}
