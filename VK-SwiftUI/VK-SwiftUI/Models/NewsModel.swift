//
//  NewsModel.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 15.01.2023.
//

import Foundation

struct News: Codable, Identifiable {
    let id = UUID()
    let sourceID: Int
    let date: Int
    let text: String
    //    let attachments: [Attachment]?
    //    let comments: Comments
    //    let likes: Likes
    //    let reposts: Reposts
    //    let views: Views
    let postID: Int
    var avatarURL: String?
    var creatorName: String?
    
    private enum CodingKeys: String, CodingKey {
        case id
        case sourceID = "source_id"
        case date
        case text
        //        case attachments
        //        case comments, likes, reposts, views
        case postID = "post_id"
        case avatarURL
        case creatorName
    }
}
