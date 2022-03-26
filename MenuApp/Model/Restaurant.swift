    //
    //  Restaurant.swift
    //  MenuApp
    //
    //  Created by Alexandr Barabash on 26.03.2022.
    //

struct Restaurant {
    
    let title: String
    let adress: String
    let numberPhone: String
}

extension Restaurant {
    
    static func getContact() -> Restaurant {

        Restaurant(
            title: "Tokyo",
            adress: "Trubnaya St., 21, Moscow 127051 Russia",
            numberPhone: "+7(495)111-22-33"
        )
    }
}
