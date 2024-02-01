//
//  ClotheListViewModel.swift
//  Closet
//
//  Created by Ben Wu on 1/2/2024.
//

import Foundation

class ClotheListViewModel{
    var clothesViewModel: [ClotheViewModel]
    init() {
        self.clothesViewModel = [ClotheViewModel]()
    }
}

extension ClotheListViewModel{
    
    func clotheViewModel(at index: Int) -> ClotheViewModel {
        return self.clothesViewModel[index]
    }
    
}
