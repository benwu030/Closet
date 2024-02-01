//
//  ClosetModels.swift
//  Closet
//
//  Created by Ben Wu on 31/1/2024.
//

import Foundation

enum ClothingType: String, Codable,CaseIterable{
        case Skirt
        case Tshirt
        case Jeans
        case Shoes
        case Accesories
}




struct Clothe: Codable{
    let id: UUID
    var name: String
    var clothingType: String
    var lastUpdateTime:Date
    
}

extension Clothe{
    
    init?(_ vm: AddClotheViewModel){
        guard let name = vm.name, let selectedClothingType = vm.selectedClothingType
        else{
            print("Create Clothe Error")
            return nil
        }
        self.id = UUID()
        self.name = name
        self.clothingType = selectedClothingType
        self.lastUpdateTime = Date()
    }
    
}


