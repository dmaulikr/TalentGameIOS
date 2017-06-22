//
//  TalentService.swift
//  TalentGame
//
//  Created by Puneet Gupta on 24/01/17.
//  Copyright © 2017 TMA Method. All rights reserved.
//

import Foundation
import UIKit

class TalentService
{
    static func getAllTalents() -> [Talent]
    {
        //get all the dimensions
        var dimensions:[Dimension] = DimensionService.getAllDimensions();
    
        var talents = [Talent]();
        
        talents.append(Talent(talentId: 1, title123: "TalentImageTitle_1_123".localized, title789: "TalentImageTitle_1_789".localized, talentName:"Talent1".localized, dimensionId:  4 ));
        talents.append(Talent(talentId: 2, title123: "TalentImageTitle_2_123".localized, title789: "TalentImageTitle_2_789".localized, talentName:"Talent2".localized, dimensionId:  1 ));
        talents.append(Talent(talentId: 3, title123: "TalentImageTitle_3_123".localized, title789: "TalentImageTitle_3_789".localized, talentName:"Talent3".localized, dimensionId:  6 ));
        talents.append(Talent(talentId: 4, title123: "TalentImageTitle_4_123".localized, title789: "TalentImageTitle_4_789".localized, talentName:"Talent4".localized, dimensionId:  2 ));
        talents.append(Talent(talentId: 5, title123: "TalentImageTitle_5_123".localized, title789: "TalentImageTitle_5_789".localized, talentName:"Talent5".localized, dimensionId:  5 ));
        talents.append(Talent(talentId: 6, title123: "TalentImageTitle_6_123".localized, title789: "TalentImageTitle_6_789".localized, talentName:"Talent6".localized, dimensionId:  2 ));
        talents.append(Talent(talentId: 7, title123: "TalentImageTitle_7_123".localized, title789: "TalentImageTitle_7_789".localized, talentName:"Talent7".localized, dimensionId:  2 ));
        talents.append(Talent(talentId: 8, title123: "TalentImageTitle_8_123".localized, title789: "TalentImageTitle_8_789".localized, talentName:"Talent8".localized, dimensionId:  1 ));
        talents.append(Talent(talentId: 9, title123: "TalentImageTitle_9_123".localized, title789: "TalentImageTitle_9_789".localized, talentName:"Talent9".localized, dimensionId:  3 ));
        talents.append(Talent(talentId: 10, title123: "TalentImageTitle_10_123".localized, title789: "TalentImageTitle_10_789".localized, talentName:"Talent10".localized, dimensionId:  1 ));
        talents.append(Talent(talentId: 11, title123: "TalentImageTitle_11_123".localized, title789: "TalentImageTitle_11_789".localized, talentName:"Talent11".localized, dimensionId:  2 ));
        talents.append(Talent(talentId: 12, title123: "TalentImageTitle_12_123".localized, title789: "TalentImageTitle_12_789".localized, talentName:"Talent12".localized, dimensionId:  4 ));
        talents.append(Talent(talentId: 13, title123: "TalentImageTitle_13_123".localized, title789: "TalentImageTitle_13_789".localized, talentName:"Talent13".localized, dimensionId:  3 ));
        talents.append(Talent(talentId: 14, title123: "TalentImageTitle_14_123".localized, title789: "TalentImageTitle_14_789".localized, talentName:"Talent14".localized, dimensionId:  3 ));
        talents.append(Talent(talentId: 15, title123: "TalentImageTitle_15_123".localized, title789: "TalentImageTitle_15_789".localized, talentName:"Talent15".localized, dimensionId:  3 ));
        talents.append(Talent(talentId: 17, title123: "TalentImageTitle_17_123".localized, title789: "TalentImageTitle_17_789".localized, talentName:"Talent17".localized, dimensionId:  2 ));
        talents.append(Talent(talentId: 18, title123: "TalentImageTitle_18_123".localized, title789: "TalentImageTitle_18_789".localized, talentName:"Talent18".localized, dimensionId:  4 ));
        talents.append(Talent(talentId: 21, title123: "TalentImageTitle_21_123".localized, title789: "TalentImageTitle_21_789".localized, talentName:"Talent21".localized, dimensionId:  5 ));
        talents.append(Talent(talentId: 22, title123: "TalentImageTitle_22_123".localized, title789: "TalentImageTitle_22_789".localized, talentName:"Talent22".localized, dimensionId:  6 ));
        talents.append(Talent(talentId: 25, title123: "TalentImageTitle_25_123".localized, title789: "TalentImageTitle_25_789".localized, talentName:"Talent25".localized, dimensionId:  5 ));
        talents.append(Talent(talentId: 27, title123: "TalentImageTitle_27_123".localized, title789: "TalentImageTitle_27_789".localized, talentName:"Talent27".localized, dimensionId:  6 ));
        talents.append(Talent(talentId: 29, title123: "TalentImageTitle_29_123".localized, title789: "TalentImageTitle_29_789".localized, talentName:"Talent29".localized, dimensionId:  1 ));
        
        for talent in talents
        {
            talent.dimension = dimensions[talent.dimensionId - 1]
            
            //let str_TalentTitle123:String = talent.title123
                //.capitalizingFirstLetter().replacingOccurrences(of: ", ", with: "\n")
            let str_TalentTitle123 = talent.title123.components(separatedBy: ", ")
            
            var title123:String = ""
            var title789:String = ""
            
            for title:String in str_TalentTitle123{
                title123 += title + "\n"
            }
            
            let str_TalentTitle789 = talent.title789.components(separatedBy: ", ")
                //.capitalizingFirstLetter().replacingOccurrences(of: ", ", with: "\n")
            
            for title:String in str_TalentTitle789{
                title789 += title + "\n"
            }

            
            talent.title123 = title123
            talent.title789 = title789

        }
        return talents
    }
    
    static func getTalentsByDimensionId(dimensionId: Int) -> [Talent] {
        let talents = getAllTalents()
        var selectedTalents = [Talent]()
        for talent in talents
        {
            if(talent.dimensionId == dimensionId)
            {
                selectedTalents.append(talent)
            }
        }
        
        return selectedTalents
    }
    
    static func getTalentByTalentId(talentId: Int) -> Talent
    {
        let talents = getAllTalents()
        var returnedTalent: Talent!
        for talent in talents
        {
            if(talent.talentId == talentId){
                 returnedTalent = talent
            }
        }
        return returnedTalent
    }
}
