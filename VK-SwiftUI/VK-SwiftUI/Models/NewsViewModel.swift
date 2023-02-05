//
//  NewsViewModel.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 15.01.2023.
//

import Combine

class NewsViewModel: ObservableObject {
    @Published var news: [News] = []
    
    private let networkService = NetworkService()
    
    func fetch() {
        networkService.getNewsfeed { [weak self] data, _ in
            self?.news = data
        }
    }
}
