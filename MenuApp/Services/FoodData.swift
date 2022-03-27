    //
    //  FoodData.swift
    //  MenuApp
    //
    //  Created by Konstantin Fomenkov on 25.03.2022.
    //

import Foundation

class FoodData {
    static let shared = FoodData()

    let names = [
        "Борщ", "Солянка", "Куриный бульон", "Жаркое",
        "Плов", "Паста", "Медовик", "Сорбет", "Чай", "Кофе"
    ]
    let images = [
        "borsch", "solyanka", "chickensoup", "jarkoe", "plov",
        "pasta", "medovik", "sorbet", "tea", "coffee"
    ]
    let calories = [40, 35, 29, 55, 65, 33, 60, 15, 5, 6]
    let prices = [300, 290, 180, 380, 350, 240, 150, 100, 80, 90]

    let categories: [CategoryType] = [
        .soups, .soups, .soups, .mains, .mains, .mains,
        .desserts, .desserts, .drinks, .drinks
    ]

    private init() {}
}
