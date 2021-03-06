//
//  GamePopUpController.swift
//  TalentGame
//
//  Created by Rohit Dabra on 09/03/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit
import QuartzCore

class GamePopUpController: UIViewController {
    
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var GameDesc: UITextView!
    @IBOutlet weak var GameTitle: UILabel!
    @IBOutlet weak var GameText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showInView(_ aView: UIView!,_ index: Int)
    {
        self.loadView();
        self.SetUp(index);
        aView.addSubview(self.view)
        self.showAnimate()
        
    }
    
    func SetUp(_ index: Int) {
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        self.popUpView?.layer.cornerRadius = 5
        self.popUpView?.layer.shadowOpacity = 0.8
        self.popUpView?.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        //self.popUpView.backgroundColor = UIColor(patternImage: UIImage(named: "artboard_game_section_info")!)
        
        let title = "Game\(index + 1)_Title";
        let desc = "Game\(index + 1)_Title_Description";
        let text = "Game\(index + 1)_Description";
        
        self.GameTitle.text = title.localized;
        self.GameDesc.text = desc.localized;
        self.GameText.text = text.localized.replacingOccurrences(of: "1.", with: "\n 1.").replacingOccurrences(of: "2.", with: "\n 2.").replacingOccurrences(of: "3.", with: "\n 3.").replacingOccurrences(of: "4.", with: "\n 4.").replacingOccurrences(of: "5.", with: "\n 5.").replacingOccurrences(of: "6.", with: "\n 6.");
    }
    
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
                
            }
        });
    }
    
    @IBAction func closePopup(_ sender: AnyObject) {
        self.removeAnimate()
    }

}
