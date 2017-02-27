//
//  GlobalFunctions.swift
//  TalentGame
//
//  Created by Puneet Gupta on 20/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import Foundation
import UIKit

func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.characters.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

extension UIImage {
    func makeImageWithColorAndSize(color: UIColor, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(CGRect(x: 0,y: 0,width: size.width,height: size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    func makeImageForTabBar(size: CGSize) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        let width = size.width/5;
        for index in 0..<5
        {
            let x = size.width - (width * CGFloat(index + 1));
            let uiColor = hexStringToUIColor(hex: Constants.colors[4-index])
            uiColor.setFill()
            UIRectFill(CGRect(x: x,y: 0,width: width,height: size.height))

        }
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}

//extension String {
//    func localized() ->String {
//        
//        let lang = UserPreferencesHelper.getUserDefaultString(key: Constants.LOCALE_LANG)
//        
//        let path = Bundle.main.path(forResource: lang, ofType: "lproj")
//        let bundle = Bundle(path: path!)
//        
//        let str = NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
//        
//        return str;
//}}
//
//extension String {
//    func localized(withComment:String) -> String {
//        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: withComment)
//    }
//}
//
//extension String {
//    public static func localize(_ key: String,_ comment: String) -> String {
//        let str = NSLocalizedString(key, comment: comment)
//        return str;
//    }
//}
