//
//  GroupModel.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 08.01.2023.
//

import Foundation

struct Group: Codable, Identifiable {
    let id: Int
    let name: String
    let avatarUrlString: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case avatarUrlString = "photo_100"
    }
}
