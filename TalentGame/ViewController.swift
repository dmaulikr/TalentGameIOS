//
//  ViewController.swift
//  TalentGame
//
//  Created by Puneet Gupta on 14/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{    
    var dimensions: [Dimension] = DimensionService.getAllDimensions()
   
    
    //@IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.navigationItem.title = "app_name".localized
        
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        //self.scrollView.contentSize = CGSize(width:320, height: 700);
        
        //setButtons()
        
//        let locale_lang:String = UserPreferencesHelper.getUserDefaultString(key: Constants.LOCALE_LANG)
//
//        if(locale_lang == "ar-SA")
//        {
//            self.view.makeTextWritingDirectionRightToLeft(self.navigationItem)
//        }
        
    }
    
    
    
    func back(sender: UIBarButtonItem) {
        
        self.navigationController?.navigationBar.barTintColor = UIColor.white;
        
        _ = navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func setButtons(){
//        
//        let button_width = 120
//        let button_height = 120
//        var button_x_dimensions:[Int] = [80, 230, 30, 180, 80, 230]
//        var button_y_dimensions:[Int] = [80, 80, 280, 280, 480, 480]
// 
//        let button1 = UIButton(type: .custom)
//        let button2 = UIButton(type: .custom)
//        let button3 = UIButton(type: .custom)
//        let button4 = UIButton(type: .custom)
//        let button5 = UIButton(type: .custom)
//        let button6 = UIButton(type: .custom)
//        
//        var buttons:[UIButton] = [button1, button2, button3, button4, button5, button6];
//
//        
//        for index in 0 ..< 6 {
//        
//            buttons[index].frame = CGRect(x:button_x_dimensions[index],y: button_y_dimensions[index], width:button_width, height:button_height) // (x, y, width, height)
//            buttons[index].backgroundColor = hexStringToUIColor(hex: Constants.colors[index])
//            buttons[index].layer.cornerRadius = 0.5 * buttons[index].bounds.size.width
//           
//            buttons[index].setTitle(dimensions[index].dimensionName, for: .normal)
//            buttons[index].titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;
//            buttons[index].titleLabel?.textAlignment = NSTextAlignment.center;
//            buttons[index].titleLabel?.font = UIFont.boldSystemFont(ofSize: 14);
//
//            buttons[index].tag = index
//            buttons[index].addTarget(self, action: #selector(self.buttonClicked), for: UIControlEvents.touchUpInside)
//            
//            view.addSubview(buttons[index])
//            
//        }
//
//    }
    
    @IBAction func buttonClicked(sender: UIButton) {
        // your code goes here
        let locale_lang:String = UserPreferencesHelper.getUserDefaultString(key: Constants.LOCALE_LANG)

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "TalentListViewController") as! TalentListViewController
        controller.titleName = dimensions[sender.tag].dimensionName
        controller.colorCode = dimensions[sender.tag].colorCode
        controller.dimensionId = (sender.tag) + 1
        self.navigationController?.pushViewController(controller, animated: true)
    }


}

