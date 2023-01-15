//
//  NewsFeedView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

struct NewsFeedView: View {
    @ObservedObject var viewModel: NewsViewModel
    
    init(viewModel: NewsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.news) { news in
            NewsRow(news: news)
        }
        .listStyle(.plain)
        .onAppear {
            viewModel.fetch()
        }
    }
}

struct NewsFeedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NewsFeedView(viewModel: NewsViewModel())
        }
    }
}
