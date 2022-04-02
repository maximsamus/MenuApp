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
    let map: String
}

extension Restaurant {
    
    static func getContact() -> Restaurant {
        Restaurant(
            title: "Pizzeria",
            address: "ул.Трубная, 21, Москва 127051",
            numberPhone: "+7(495)111-22-33", 
            map: "image"
        )
    }
}
