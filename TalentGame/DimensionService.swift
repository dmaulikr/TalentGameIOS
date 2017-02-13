//
//  DimensionService.swift
//  TalentGame
//
//  Created by Puneet Gupta on 20/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import Foundation
import UIKit

class DimensionService
{
    static func getAllDimensions() -> Array<Dimension>
    {
        var dimensions = [Dimension]()
        
        dimensions.append(Dimension(dimensionId: 1, dimensionName: "dimension1_text".localized(), colorCode: Constants.colors[0]));
        dimensions.append(Dimension(dimensionId: 2, dimensionName: "dimension2_text".localized(), colorCode: Constants.colors[1]));
        dimensions.append(Dimension(dimensionId: 3, dimensionName: "dimension3_text".localized(), colorCode: Constants.colors[2]));
        dimensions.append(Dimension(dimensionId: 4, dimensionName: "dimension4_text".localized(), colorCode: Constants.colors[3]));
        dimensions.append(Dimension(dimensionId: 5, dimensionName: "dimension5_text".localized(), colorCode: Constants.colors[4]));
        dimensions.append(Dimension(dimensionId: 6, dimensionName: "dimension6_text".localized(), colorCode: Constants.colors[5]));
        return dimensions;
    }
}
