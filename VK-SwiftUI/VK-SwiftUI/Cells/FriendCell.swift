//
//  FriendCell.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 26.12.2022.
//

import SwiftUI

struct FriendCell: View {
    let friend: Friend
    
    var body: some View {
        HStack {
            CellAvatarView()
                .padding(.leading, 5)
                .padding(.vertical, 5)
            Circle()
                .frame(width: 10, height: 10)
                .overlay(Color.green)
                .clipShape(Circle())
                .padding(.horizontal, 8)
            Text("\(friend.firstName) \(friend.lastName)")
                .font(.system(size: 20))
                .lineLimit(2)
                .layoutPriority(1)
            Spacer()
        }
        .background(Color.white)
        .cornerRadius(15)
    }
}

struct FriendCell_Previews: PreviewProvider {
    
    static let friend: Friend = Friend(id: 0, firstName: "First", lastName: "Last", avatar: Image(systemName: ""))
    
    static var previews: some View {
        List {
            FriendCell(friend: friend)
        }
    }
}
