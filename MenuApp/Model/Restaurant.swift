//
//  Restaurant.swift
//  MenuApp
//
//  Created by Alexandr Barabash on 26.03.2022.
//

struct Restaurant {
    
    let title: String
    let adress: String
    let numberPhone: Int
    
}

extension Restaurant {
    
    static func getContact() -> [Restaurant] {
        [
            Restaurant(
                title: DataManager.shared.cafeTitle,
                adress: DataManager.shared.adress,
                numberPhone: DataManager.shared.numberPhone
            )
        ]
    }
}
