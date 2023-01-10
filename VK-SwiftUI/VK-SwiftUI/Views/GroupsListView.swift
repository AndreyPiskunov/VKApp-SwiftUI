//
//  GroupsListView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

struct GroupsListView: View {
    @State private var groups: [Group] = [
        Group(id: 0, name: "iOS Developers", avatar: Image(systemName: "")),
        Group(id: 1, name: "Android Developers", avatar: Image(systemName: ""))
    ]
    
    var body: some View {
        List(groups) { group in
            NavigationLink {
            } label: {
                GroupRow(group: group)
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

struct GroupsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GroupsListView()
        }
    }
}
