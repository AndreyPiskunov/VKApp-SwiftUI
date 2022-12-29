//
//  NewsFeedView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

struct NewsFeedView: View {
    @State private var selectedTab: Tab = .newspaper
    
    var body: some View {
        Text("News")
    }
}

struct NewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeedView()
    }
}
