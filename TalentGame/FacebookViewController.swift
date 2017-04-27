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
    
    @IBOutlet weak var Activity: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        webViewInstance.loadRequest(NSURLRequest(url: NSURL(string: "https://www.facebook.com/pg/tmamethode/events/")! as URL) as URLRequest)
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
