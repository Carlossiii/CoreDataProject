//
//  user.swift
//  CoreDataProject
//
//  Created by Carlos Vinicius on 13/10/22.
//

import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    let isActive: Bool
    let name: String
    let age: Int
    let company: String
    let email: String
    let address: String
    let about: String
    let registered: Date
    let tags: [String]
    let friends: [friend]
}
