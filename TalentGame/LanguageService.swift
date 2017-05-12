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
        languages.append(Language(languageId: 2, languageName: "Nederlands", culture: "nl"))
        languages.append(Language(languageId: 3, languageName: "Dansk", culture: "da"))
        languages.append(Language(languageId: 4, languageName: "Deutsch", culture: "de"))
        languages.append(Language(languageId: 5, languageName: "Français", culture: "fr"))
        languages.append(Language(languageId: 6, languageName: "Español", culture: "es"))
        languages.append(Language(languageId: 7, languageName: "Português", culture: "pt-PT"))
        languages.append(Language(languageId: 8, languageName: "العربية", culture: "ar-SA"))
        languages.append(Language(languageId: 9, languageName: "Polish", culture: "pl-PL"))
        languages.append(Language(languageId: 9, languageName: "Русский", culture: "ru-RU"))
        languages.append(Language(languageId: 9, languageName: "Chinese (Simplified)", culture: "zh-Hans"))
        return languages
    }
}
