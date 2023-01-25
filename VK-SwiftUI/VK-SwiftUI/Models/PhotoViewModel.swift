//
//  PhotoViewModel.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 16.01.2023.
//

import Combine

class PhotoViewModel: ObservableObject {
    @Published var photos: [Photo] = []
    
    private let networkService = NetworkService()

    func fetch(userId: Int) {
        networkService.getPhotos(userId: userId) { [weak self] data in
            self?.photos = data
        }
    }
}
