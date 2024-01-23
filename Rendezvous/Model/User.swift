//
//  User.swift
//  Rendezvous
//
//  Created by Thomas Garayua on 1/22/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullName: String
    let email: String
    
    var initials: String {
        let formatter = PersonNameComponentsFormatter()
        if let componets = formatter.personNameComponents(from: fullName) {
            formatter.style = .abbreviated
            return formatter.string(from: componets)
        }
        return ""
    }
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, fullName: "Kobe Bryant", email: "test@gmail.com")
}
