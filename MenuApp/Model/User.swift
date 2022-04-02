//
//  User.swift
//  MenuApp
//
//  Created by Paul Matar on 30.03.2022.
//

struct User {
    let firstName: String?
    let lastName: String?
    let email: String
    let password: String

    func checkUser(_ user: User) -> Bool {
        UserData.shared.users.contains(where: { $0.email == user.email })
    }

    func checkPassword(of user: User) -> Bool {
        UserData.shared.users.contains(where: { $0.email == user.email && $0.password == user.password })
    }

    func addUser(_ user: User) {
        UserData.shared.users.append(user)
    }
}
