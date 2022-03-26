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
        let data = FoodData.shared
        return [
            Menu(category: .soups, food: [
                Food(name: data.names[0],
                     image: data.image[0],
                     price: data.price[0],
                     calories: data.calories[0]),
                Food(name: data.names[1],
                     image: data.image[1],
                     price: data.price[1],
                     calories: data.calories[1]),
                Food(name: data.names[2],
                     image: data.image[2],
                     price: data.price[2],
                     calories: data.calories[2])
            ]),
            Menu(category: .main, food: [
                Food(name: data.names[3],
                     image: data.image[3],
                     price: data.price[3],
                     calories: data.calories[3]),
                Food(name: data.names[4],
                     image: data.image[4],
                     price: data.price[4],
                     calories: data.calories[4]),
                Food(name: data.names[5],
                     image: data.image[5],
                     price: data.price[5],
                     calories: data.calories[5])
            ]),
            Menu(category: .desserts, food: [
                Food(name: data.names[6],
                     image: data.image[6],
                     price: data.price[6],
                     calories: data.calories[6]),
                Food(name: data.names[7],
                     image: data.image[7],
                     price: data.price[7],
                     calories: data.calories[7])
            ]),
            Menu(category: .drinks, food: [
                Food(name: data.names[8],
                     image: data.image[8],
                     price: data.price[8],
                     calories: data.calories[8]),
                Food(name: data.names[9],
                     image: data.image[9],
                     price: data.price[9],
                     calories: data.calories[9])
            ])
        ]
    }
}

struct Food {

    let name: String
    let image: String
    let price: Int
    let calories: Int

    var shortDescription: String {
        "Блюдо \(name), цена: \(price) рублей"
    }
        //не уверен что это переменная нужна, скомпоновать красиво на экране проще раздельные переменные
    var fullDescription: String {
        "Блюдо \(name), категория , имеет калорийность \(calories) ккал. и стоит \(price) рублей"
    }
}

enum CategoryType: String {
    case soups = "Супы"
    case main = "Горячее"
    case desserts = "Десерты"
    case drinks = "Напитки"
}

//extension Food {
//    static func getMenu() -> [Food] {
//
//        var foods: [Food] = []
//
//        let names = FoodData.shared.names
//        let image = FoodData.shared.image
//        let price = FoodData.shared.price
//        let calories = FoodData.shared.calories
////        let categories = FoodData.shared.category
//
//        let iterations = min(
//            names.count,
//            image.count,
//            price.count,
//            calories.count
////            categories.count
//        )
//
//        for index in 0..<iterations {
//            let food = Food(
//                name: names[index],
//                image: image[index],
//                price: price[index],
////                category: categories[index],
//                calories: calories[index]
//            )
//            foods.append(food)
//        }
//        return foods
//    }
//}




