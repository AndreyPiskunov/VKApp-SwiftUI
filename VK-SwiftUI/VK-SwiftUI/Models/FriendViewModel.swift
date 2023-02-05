//
//  FriendViewModel.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 13.01.2023.
//

import Combine

class FriendViewModel: ObservableObject {
    @Published var friends: [Friend] = []
    
    private let networkService = NetworkService()

    func fetch() {
        networkService.getFriends { [weak self] data in
            self?.friends = data
        }
    }
}
