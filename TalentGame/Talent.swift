//
//  Talent.swift
//  TalentGame
//
//  Created by Puneet Gupta on 20/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import Foundation
import UIKit

class Talent
{
    var talentId: Int
    var title123: String
    var title789: String
    var talentName: String
    var dimensionId: Int
    var dimension: Dimension?
    
    init(talentId: Int, title123: String, title789: String, talentName: String, dimensionId: Int) {
        self.talentId = talentId
        self.title123 = title123
        self.title789 = title789
        self.talentName = talentName
        self.dimensionId = dimensionId
        self.dimension = nil
    }
}
