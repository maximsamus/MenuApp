    //
    //  Food.swift
    //  MenuApp
    //
    //  Created by Konstantin Fomenkov on 25.03.2022.
    //

import Foundation

struct Menu {
    let category: CategoryType
    let food: [Food]
    
    static func getMenu() -> [Menu] {
        let foodData = Food.getMenu()

        var menu: [Menu] = []
        var soups: [Food] = []
        var mains: [Food] = []
        var desserts: [Food] = []
        var drinks: [Food] = []

        for food in foodData {
            switch food.category {
            case .soups:
                soups.append(food)
            case .mains:
                mains.append(food)
            case .desserts:
                desserts.append(food)
            case .drinks:
                drinks.append(food)
            }
        }
        menu.append(Menu(category: .soups, food: soups))
        menu.append(Menu(category: .mains, food: mains))
        menu.append(Menu(category: .desserts, food: desserts))
        menu.append(Menu(category: .drinks, food: drinks))

        return menu
    }
}

struct Food {

    let name: String
    let image: String
    let price: Int
    let calories: Int
    let category: CategoryType

    var shortDescription: String {
        "Блюдо \(name), цена: \(price) рублей"
    }
        //не уверен что это переменная нужна, скомпоновать красиво на экране проще раздельные переменные
    var fullDescription: String {
        "Блюдо \(name) имеет калорийность \(calories) ккал. и стоит \(price) рублей"
    }
}

enum CategoryType: String {
    case soups = "Супы"
    case mains = "Горячее"
    case desserts = "Десерты"
    case drinks = "Напитки"
}

extension Food {
    static func getMenu() -> [Food] {

        var foods: [Food] = []

        let names = FoodData.shared.names
        let images = FoodData.shared.images
        let prices = FoodData.shared.prices
        let calories = FoodData.shared.calories
        let categories = FoodData.shared.categories

        let iterations = min(
            names.count,
            images.count,
            prices.count,
            calories.count,
            categories.count
        )

        for index in 0..<iterations {
            let food = Food(
                name: names[index],
                image: images[index],
                price: prices[index],
                calories: calories[index],
                category: categories[index]
            )
            foods.append(food)
        }
        return foods
    }
}




