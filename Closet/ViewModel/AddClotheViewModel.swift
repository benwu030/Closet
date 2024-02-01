//
//  AddClotheViewModel.swift
//  Closet
//
//  Created by Ben Wu on 1/2/2024.
//

import Foundation

struct AddClotheViewModel{
    var name: String?
    var selectedClothingType: String?
    var clothingTypes:[String] {
        return ClothingType.allCases.map{$0.rawValue}
    }
    
    
}
