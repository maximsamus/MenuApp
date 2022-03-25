//
//  Food.swift
//  MenuApp
//
//  Created by Konstantin Fomenkov on 25.03.2022.
//

import Foundation

struct Food {

    let name: String
    let category: String
    let ingredients: [String]
    let image: String
    let calories: Int
    let price: Int

    var shortDescription: String {
        "Food: \(name) price: \(price) rubles"
    }

    var fullDescription: String {
        "Food \(name) have ingredients - \(ingredients.joined(separator: ", ")) and overall calories \(calories) and cost \(price)"
    }
}

extension Food {
    static func getMenu() -> [Food] {
        let foods: [Food] = []
        return foods
    }
}


