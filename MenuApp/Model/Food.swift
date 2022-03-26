//
//  Food.swift
//  MenuApp
//
//  Created by Konstantin Fomenkov on 25.03.2022.
//

import Foundation

struct Food {

    let name: String
    let image: String
    let price: Int
    let category: FoodCategories
    let calories: Int
//    let ingredients: [String]

    var shortDescription: String {
        "Блюдо \(name), цена: \(price) рублей"
    }
    //не уверен что это переменная нужна, скомпоновать красиво на экране проще раздельные переменные
    var fullDescription: String {
        "Блюдо \(name), категория \(category), имеет калорийность \(calories) ккал. и стоит \(price) рублей"
    }
}

extension Food {
    static func getMenu() -> [Food] {

        var foods: [Food] = []

        let names = FoodData.shared.names
        let image = FoodData.shared.image
        let price = FoodData.shared.price
        let calories = FoodData.shared.calories
        let categories = FoodData.shared.category

        let iterations = min(
            names.count,
            image.count,
            price.count,
            calories.count,
            categories.count
        )

        for index in 0..<iterations {
            let food = Food(
                name: names[index],
                image: image[index],
                price: price[index],
                category: categories[index],
                calories: calories[index]
            )
            foods.append(food)
        }
        return foods
    }
}

enum FoodCategories: String {
    case soups = "супы"
    case mainCourses = "горячее"
    case deserts = "десерты"
    case drinks = "напитки"
}


