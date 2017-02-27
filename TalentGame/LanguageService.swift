//
//  LanguageService.swift
//  TalentGame
//
//  Created by Puneet Gupta on 20/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import Foundation
import UIKit

class LanguageService
{
    static func getAllLanguages() -> Array<Language>
    {
        var languages = [Language]()
        
        languages.append(Language(languageId: 1, languageName: "English", culture: "en"))
        languages.append(Language(languageId: 2, languageName: "Dutch", culture: "nl"))
        languages.append(Language(languageId: 3, languageName: "Danish", culture: "da"))
        languages.append(Language(languageId: 4, languageName: "Deutsch", culture: "de"))
        return languages
    }
}
