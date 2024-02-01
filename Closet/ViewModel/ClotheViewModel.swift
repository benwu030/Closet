//
//  ClotheViewModel.swift
//  Closet
//
//  Created by Ben Wu on 31/1/2024.
//

import Foundation

struct ClotheViewModel{
    let clothe:Clothe
}

extension ClotheViewModel{
    
    var id: String{
        return self.clothe.id.uuidString
    }
    var name: String{
        return self.clothe.name
    }
    var ClothingType: String{
        return self.clothe.clothingType
    }
    var lastUpdateTime: String{
        return self.clothe.lastUpdateTime.description
    }

    
}
