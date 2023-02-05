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
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case avatarUrlString = "photo_100"
    }
}
