//
//  MainView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

enum Tabs: String {
    case news = "News"
    case friends = "Friends"
    case groups = "Groups"
}

struct MainView: View {
    @State private var selectedTab: Tabs = .news
    
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor(named: "BrandColor")
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]

        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white
        UIBarButtonItem.appearance().tintColor = .white
    }
    
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                NewsFeedView()
                    .tabItem { Label("News", systemImage: "newspaper") }
                    .tag(Tabs.news)
                FriendsListView(viewModel: FriendViewModel())
                    .tabItem { Label("Friends", systemImage: "person") }
                    .tag(Tabs.friends)
                GroupsListView(viewModel: GroupViewModel())
                    .tabItem { Label("Groups", systemImage: "person.3") }
                    .tag(Tabs.groups)
            }
            .navigationTitle(selectedTab.rawValue)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
