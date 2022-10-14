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
    
    static let example = User(id: UUID(), isActive: true, name: "Carlos Rodrigues", age: 25, company: "Home and home Industries", email: "cv3824@gmail.com", address: "Nice Arts", about: "In the humanities, different fields of study concern themselves with different forms of texts. Literary theorists, for example, focus primarily on literary texts—novels, essays, stories, and poems. Legal scholars focus on legal texts such as laws, contracts, decrees, and regulations. Cultural theorists work with a wide variety of texts, including those that may not typically be the subject of studies, such as advertisements, signage, instruction manuals, and other ephemera.", registered: Date.now, tags: ["student", "gettingcrazy", "gettingmarried:D"], friends: [])
}
