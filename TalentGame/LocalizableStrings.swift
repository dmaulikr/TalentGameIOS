//
//  LocalizableStrings.swift
//  TalentGame
//
//  Created by Rohit Dabra on 16/02/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import Foundation

private class Localizator {
    
    static let sharedInstance = Localizator()
    
    
    
    
    lazy var localizableDictionary: NSDictionary! = {
        if let path = Bundle.main.path(forResource: "Localizable", ofType: "plist") {
            return NSDictionary(contentsOfFile: path)
        }
        fatalError("Localizable file NOT found")
    }()
    
    func localize(string: String) -> String {
        
        let lang = UserPreferencesHelper.getUserDefaultString(key: Constants.LOCALE_LANG)
        
        localizableDictionary = {
            if let path = Bundle.main.path(forResource: "Localizable", ofType: "plist",inDirectory: (lang + ".lproj"),forLocalization: lang) {
                return NSDictionary(contentsOfFile: path)
            }
            fatalError("Localizable file NOT found")
        }()
        
        guard let localizedString = (localizableDictionary.value(forKey: string) as! NSDictionary).value(forKey : "value") as? String else {
            assertionFailure("Missing translation for: \(string)")
            return ""
        }
        return localizedString
    }
}

extension String {
    var localized: String {
        return Localizator.sharedInstance.localize(string: self)
    }
}
