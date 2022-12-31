//
//  FriendsView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

struct Friend: Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let avatar: Image
}

struct FriendsListView: View {
    @State private var friends: [Friend] = [
        Friend(id: 0, firstName: "Sergey", lastName: "Ivanov", avatar: Image(systemName: "")),
        Friend(id: 1, firstName: "Andrey", lastName: "Petrov", avatar: Image(systemName: ""))
    ]
    
    var body: some View {
        List(friends) { friend in
            NavigationLink {
//                                Gallery(friend: friend)
            } label: {
                FriendCell(friend: friend)
            }
        }
        .listStyle(.plain)
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FriendsListView()
        }
    }
}
