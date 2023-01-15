//
//  Response.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 13.01.2023.
//

import Foundation

struct VKResponse<T:Codable>: Codable {
    let response: Response<T>
}

struct Response<T: Codable>: Codable {
    let items: [T]
    let profiles: [Friend]?
    let groups: [Group]?
    let nextFrom: String?

    enum CodingKeys: String, CodingKey {
        case items
        case profiles
        case groups
        case nextFrom = "next_from"
    }
}
