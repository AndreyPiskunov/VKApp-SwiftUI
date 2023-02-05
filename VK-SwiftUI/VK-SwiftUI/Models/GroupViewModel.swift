//
//  GroupViewModel.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 14.01.2023.
//

import Combine

class GroupViewModel: ObservableObject {
    @Published var groups: [Group] = []
    
    private let networkService = NetworkService()
    
    func fetch() {
        networkService.getGroups { [weak self] data in
            self?.groups = data
        }
    }
}
