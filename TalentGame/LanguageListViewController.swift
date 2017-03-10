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
        let lang = UserPreferencesHelper.getUserDefaultString(key: Constants.LOCALE_LANG)
        
        //let language = pickerDataSoruce.first { $0.culture == lang }
        let index = pickerDataSoruce.index(where: { $0.culture == lang})
        
        self.picker.showsSelectionIndicator = true;
        self.picker.selectRow(index!, inComponent: 0, animated: true)
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
    }
   
}
