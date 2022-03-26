//
//  RestaurantData.swift
//  MenuApp
//
//  Created by Alexandr Barabash on 26.03.2022.
//

class RestaurantData {
    
    static let shared = RestaurantData()
    
    let cafeTitle = "Tokyo"
    let adress = "Trubnaya St., 21, Moscow 127051 Russia"
    let numberPhone = 84951112233
    
    private init() {}
}
