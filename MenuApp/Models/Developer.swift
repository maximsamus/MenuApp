//
//  Developer.swift
//  MenuApp
//
//  Created by Konstantin Fomenkov on 26.03.2022.
//

struct Developer {
    let fullname: String
    let position: Position
    let contacts: String
    
    static func getTeam() -> [Developer] {
        [
            Developer(
                fullname: "Maxim Samus",
                position: .teamLead,
                contacts: "@max1m2"
            ),
            Developer(
                fullname: "Paul Matar",
                position: .developer,
                contacts: "@pmatar"
            ),
            Developer(
                fullname: "Alexej Dats",
                position: .developer,
                contacts: "@lex95us"
            ),
            Developer(
                fullname: "Konstantin Fomenkov",
                position: .developer,
                contacts: "@CreoPride"
            )
        ]
    }
}
extension Developer {
    enum Position: String {
        case teamLead = "Team Lead"
        case developer = "Developer"
    }
}
