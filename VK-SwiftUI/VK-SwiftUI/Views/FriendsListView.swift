//
//  FriendsView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

struct FriendsListView: View {
    @ObservedObject var viewModel: FriendViewModel
    
    init(viewModel: FriendViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.friends) { friend in
            NavigationLink {
//TODO:                GalleryView(friend: friend)
            } label: {
                FriendRow(friend: friend)
            }
            .listRowSeparator(.hidden)
            .padding(5)
        }
        .onAppear { viewModel.fetch() }
        .listStyle(.plain)
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FriendsListView(viewModel: FriendViewModel())
        }
    }
}
