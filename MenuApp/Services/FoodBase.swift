//
//  FoodBase.swift
//  MenuApp
//
//  Created by Konstantin Fomenkov on 25.03.2022.
//

import Foundation

class FoodBase {

    static let shared = FoodBase()

    let names = ["Борщ", "Солянка", "Куриный бульон", "Жаркое", "Плов", "Паста", "Медовик", "Сорбет", "Чай", "Кофе"]
    let category: [FoodCategories] = [.soups, .soups, .soups, .mainCourses, .mainCourses, .mainCourses, .deserts, .deserts, .drinks, .drinks]
    let image = ["Борщ", "Солянка", "Куриный бульон", "Жаркое", "Плов", "Паста", "Медовик", "Сорбет", "Чай", "Кофе"]
    let calories = [40, 35, 29, 55, 65, 33, 60, 15, 5, 6]
    let price = [300, 290, 180, 380, 350, 240, 150, 100, 80, 90]
    //давайте пока без ингредиентов, это массив в массиве получается, нам бы с этим справится!
    //let ingredients: [[String]]

    private init() {}

}
