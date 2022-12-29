//
//  FriendsView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

struct FriendsListView: View {
    @State private var selectedTab: Tab = .friends
    
    var body: some View {
        Text("Friends")
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsListView()
    }
}
