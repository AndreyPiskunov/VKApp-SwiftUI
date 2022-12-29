//
//  GroupsListView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

struct GroupsListView: View {
    @State private var selectedTab: Tab = .groups
    
    var body: some View {
        Text("Groups")
    }
}

struct GroupsListView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsListView()
    }
}
