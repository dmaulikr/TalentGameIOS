//
//  TabBarController.swift
//  TalentGame
//
//  Created by Rohit Dabra on 27/02/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //No need to change the colors, looks good in white
        //SetColors();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func SetColors() {
        let width = self.tabBar.frame.width;
        let height = self.tabBar.frame.height;
        
        self.tabBar.backgroundImage = UIImage().makeImageForTabBar(size: CGSize(width: width, height: height));
        
        //Selected Icon Color To be Changed
        //self.tabBar.tintColor = UIColor.blue;
        
        if #available(iOS 10.0, *) {
            self.tabBar.unselectedItemTintColor = UIColor.white
        } else {
            // Fallback on earlier versions
        };

    }
}
