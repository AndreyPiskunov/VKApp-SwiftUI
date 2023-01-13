//
//  FriendModel.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 08.01.2023.
//

import Foundation

struct Friend: Codable, Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let avatarUrlString: String
    let networkStatus: Int?
//    let friendStatus: Int?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case firstName = "first_name"
        case lastName = "last_name"
        case avatarUrlString = "photo_100"
        case networkStatus = "online"
//        case friendStatus = "friend_status"
    }
}


