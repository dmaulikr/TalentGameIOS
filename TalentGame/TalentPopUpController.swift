//
//  TalentPopUpController.swift
//  TalentGame
//
//  Created by Rohit Dabra on 09/03/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

class TalentPopUpController: UIViewController {
    @IBOutlet weak var popUpView: UIView!

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var Close: UIButton!
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var lblFooter: UILabel!
    
    public var data: Talent!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        self.popUpView?.layer.cornerRadius = 5
        self.popUpView?.layer.shadowOpacity = 0.8
        self.popUpView?.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        
        
        
        //self.imageView.image = UIImage(named: image123_pic);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showInView(_ aView: UIView!,_ image: UIImage, _ talentId: Int, _ score: Int,_ color: String)
    {
        //self.loadView();
        self.SetUp(image);
        
        let talentData = TalentService.getTalentByTalentId(talentId: talentId)
        if(score == 123){
            lblHeader.text = talentData.title123
        }
        else if(score == 789){
            lblHeader.text = talentData.title789
        }
        lblFooter.text = talentData.talentName
        lblFooter.textColor = hexStringToUIColor(hex: color)

        
        aView.addSubview(self.view)
        self.showAnimate()
        
    }
    
    func SetUp(_ image: UIImage) {
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        self.popUpView?.layer.cornerRadius = 5
        self.popUpView?.layer.shadowOpacity = 0.8
        self.popUpView?.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        
        
        
        self.imageView.image = image;
//        let title = "Game\(index + 1)_Title";
//        let desc = "Game\(index + 1)_Title_Description";
//        let text = "Game\(index + 1)_Description";
//        
//        self.GameTitle.text = title.localized;
//        self.GameDesc.text = desc.localized;
//        self.GameText.text = text.localized;
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
