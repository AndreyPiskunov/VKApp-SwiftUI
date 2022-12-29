//
//  MainView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

struct MainView: View {
    @State private var selectedTab: Tab = .newspaper
    
    init(selectedTab: Tab) {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    HStack {
                        if selectedTab == .newspaper {
                            NewsFeedView() }
                        if selectedTab == .friends {
                            FriendsListView() }
                        if selectedTab == .groups {
                            GroupsListView()
                        }
                    }.animation(nil, value: selectedTab)
                }
            }
            VStack {
                Spacer()
                CustomTapBar(selectedTab: $selectedTab)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(selectedTab: .newspaper)
    }
}
