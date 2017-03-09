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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        self.popUpView?.layer.cornerRadius = 5
        self.popUpView?.layer.shadowOpacity = 0.8
        self.popUpView?.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override public init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: Bundle!) {
        popUpView = UIView()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showInView(_ aView: UIView!)
    {
        aView.addSubview(self.view)
        
        self.showAnimate()
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
