//
//  Language.swift
//  TalentGame
//
//  Created by Puneet Gupta on 20/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import Foundation
import UIKit

class Language
{
    var languageId: Int
    var languageName: String
    var culture: String
    
    init(languageId: Int, languageName: String, culture: String) {
        self.languageId = languageId
        self.languageName = languageName
        self.culture = culture
    }
}
