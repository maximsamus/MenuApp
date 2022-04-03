    //
    //  User.swift
    //  MenuApp
    //
    //  Created by Paul Matar on 30.03.2022.
    //

struct User {
    var firstName: String?
    var lastName: String?
    let email: String
    let password: String
}

extension User {
    func checkUser(_ user: User) -> Bool {
        UserData.shared.users.contains(where: { $0.email == user.email })
    }
    func checkPassword(of user: User) -> Bool {
        UserData.shared.users.contains(where: {
            $0.email == user.email && $0.password == user.password
        })
    }
    func getUser(_ user: inout User) {
        UserData.shared.users.forEach { inUser in
            if inUser.email == user.email && inUser.password == user.password {
                user = inUser
            }
        }
    }
    func add(user: User) {
        UserData.shared.users.append(user)
    }
}
