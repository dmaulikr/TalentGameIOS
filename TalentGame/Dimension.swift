//
//  Dimension.swift
//  TalentGame
//
//  Created by Puneet Gupta on 20/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import Foundation
import UIKit

class Dimension
{
    var dimensionId: Int
    var dimensionName: String
    var colorCode: String
    
    init(dimensionId: Int, dimensionName: String, colorCode: String) {
        self.dimensionId = dimensionId
        self.dimensionName = dimensionName
        self.colorCode = colorCode
    }
}
