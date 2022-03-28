    //
    //  Restaurant.swift
    //  MenuApp
    //
    //  Created by Konstantin Fomenkov on 26.03.2022.
    //

struct Restaurant {
    let title: String
    let address: String
    let numberPhone: String
    let image: String
}

extension Restaurant {
    
    static func getContact() -> Restaurant {
        Restaurant(
            title: "Tokyo",
            address: "Trubnaya St., 21, Moscow 127051 Russia",
            numberPhone: "+7(495)111-22-33", 
            image: "image"
        )
    }
}
