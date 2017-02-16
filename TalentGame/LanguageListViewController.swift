//
//  LanguageListViewController.swift
//  TalentGame
//
//  Created by Puneet Gupta on 20/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import UIKit

class LanguageListViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var picker: UIPickerView!
    var pickerDataSoruce:[Language] = LanguageService.getAllLanguages()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker.dataSource = self;
        self.picker.delegate = self;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSoruce.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return pickerDataSoruce[row].languageName
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
           UserPreferencesHelper.setUserDefaultString(key: Constants.LOCALE_LANG, value: pickerDataSoruce[row].culture)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "TabBarController")
        self.present(controller, animated: false, completion: nil)
        
//        let appDelegate = UIApplication.shared.delegate! as! AppDelegate
//        
//        let initialViewController = self.storyboard!.instantiateViewController(withIdentifier: "NavHomeViewController")
//        appDelegate.window?.rootViewController = initialViewController
//        appDelegate.window?.makeKeyAndVisible()
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
