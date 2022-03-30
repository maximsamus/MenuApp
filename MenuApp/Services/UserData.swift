//
//  UserData.swift
//  MenuApp
//
//  Created by Paul Matar on 30.03.2022.
//

class UserData {
    static let shared = UserData()

    var users: [User] = []
    
    func add(user: User) {
        users.append(user)
    }
    
    private init() {}
}


