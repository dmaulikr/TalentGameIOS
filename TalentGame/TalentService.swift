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
        
        talents.append(Talent(talentId: 1, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  1 ));
        talents.append(Talent(talentId: 2, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  1 ));
        talents.append(Talent(talentId: 3, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  1 ));
        talents.append(Talent(talentId: 4, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  1 ));
        talents.append(Talent(talentId: 5, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  2 ));
        talents.append(Talent(talentId: 6, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  2 ));
        talents.append(Talent(talentId: 7, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  2 ));
        talents.append(Talent(talentId: 8, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  3 ));
        talents.append(Talent(talentId: 9, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  3 ));
        talents.append(Talent(talentId: 10, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  3 ));
        talents.append(Talent(talentId: 11, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  3 ));
        talents.append(Talent(talentId: 12, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  3 ));
        talents.append(Talent(talentId: 13, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  4 ));
        talents.append(Talent(talentId: 14, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  4 ));
        talents.append(Talent(talentId: 15, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  4 ));
        talents.append(Talent(talentId: 16, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  4 ));
        talents.append(Talent(talentId: 17, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  5 ));
        talents.append(Talent(talentId: 18, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  5 ));
        talents.append(Talent(talentId: 19, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  5 ));
        talents.append(Talent(talentId: 20, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  6 ));
        talents.append(Talent(talentId: 21, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  6));
        talents.append(Talent(talentId: 22, title123: "Title123", title789: "Title789", talentName:"", dimensionId:  6));
    
        for talent in talents
        {
            talent.dimension = dimensions[talent.dimensionId - 1]
            
            let TalentImageTitle123_id_1 = "TalentImageTitle_"
            let TalentImageTitle123_id_2 =  String(talent.talentId)
            let TalentImageTitle123_id_3 = "_123"
            let TalentImageTitle123_id = TalentImageTitle123_id_1 + TalentImageTitle123_id_2 + TalentImageTitle123_id_3
            
            let localized_TalentTitle123:String = TalentImageTitle123_id.localizedCapitalized
                //NSLocalizedString(, comment: "")
            
            //var delimiter_TalentTitle = ", "
            
            let TalentTitle123:String = localized_TalentTitle123.capitalized
            
//CapitalizeEveryFirstLetter(localized_TalentTitle123, delimiter: delimiter_TalentTitle)
            
            let str_TalentTitle123:String = TalentTitle123.replacingOccurrences(of: ", ", with: "\n")
            
            let TalentImageTitle789_id_1 = "TalentImageTitle_"
            let TalentImageTitle789_id_2 = String(talent.talentId)
            let TalentImageTitle789_id_3 = "_789"
            let TalentImageTitle789_id = TalentImageTitle789_id_1 + TalentImageTitle789_id_2 + TalentImageTitle789_id_3
            
            let localized_TalentImageTitle789:String = NSLocalizedString(TalentImageTitle789_id, comment: "")
            
           let TalentTitle789:String = localized_TalentImageTitle789.capitalized
            
//            CapitalizeEveryFirstLetter(localized_TalentImageTitle789, delimiter: delimiter_TalentTitle)
            
            let str_TalentTitle789:String = TalentTitle789.replacingOccurrences(of: ", ", with: "\n")
            
            talent.title123 = str_TalentTitle123
            talent.title789 = str_TalentTitle789
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
    
//    func CapitalizeEveryFirstLetter(str:String, delimiter:String) -> String {
//    
//        var arr:[String] = str.components(separatedBy: delimiter)
//    
//        var sb:StringBuilder = StringBuilder?
//    
//        for var anArr in arr
//        {
//            sb.append(Character.toUpperCase(anArr.charAt(0)))
//            .append(anArr.substring(1)).append(delimiter);
//        }
//    
//        return sb.toString().substring(0, sb.toString().length() - 2).trim();
//    }
}
