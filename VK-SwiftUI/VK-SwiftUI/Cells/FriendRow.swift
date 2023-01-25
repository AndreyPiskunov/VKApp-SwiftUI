//
//  FriendCell.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 26.12.2022.
//

import SwiftUI

struct FriendRow: View {
    let friend: Friend
    
    var body: some View {
        HStack {
            CellAvatarView(url: URL(string: friend.avatarUrlString))
            OnlineStatusView(status: friend.networkStatus) { Circle() }
            Text("\(friend.firstName) \(friend.lastName)")
                .font(.system(size: 20))
                .lineLimit(2)
                .layoutPriority(1)
            Spacer()
        }
        .frame(height: 50)
    }
}

struct FriendRow_Previews: PreviewProvider {
    
    static let friend: Friend = Friend(id: 0, firstName: "First", lastName: "Last", avatarUrlString: "", networkStatus: 1, friendStatus: 0)
    
    static var previews: some View {
        List {
            FriendRow(friend: friend)
        }
    }
}
