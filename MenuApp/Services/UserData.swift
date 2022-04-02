//
//  UserData.swift
//  MenuApp
//
//  Created by Paul Matar on 30.03.2022.
//

class UserData {
    static let shared = UserData()

    var users: [User] = [
        User(firstName: "Admin", lastName: nil, email: "admin", password: "admin"),
        User(email: "a", password: "a")
    ]
    
    private init() {}
}


