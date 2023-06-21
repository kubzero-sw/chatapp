//
//  Users.swift
//  chatapp
//
//  Created by Rashid Karina on 20.05.2023.
//

import Foundation
struct User {
    let name: String
    let email: String
    // Добавьте другие свойства, если это необходимо
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}
