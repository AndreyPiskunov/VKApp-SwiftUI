//
//  GalleryView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 08.01.2023.
//

import SwiftUI
import ASCollectionView

struct GalleryView: View {
    
    let friend: Friend
    
    @State private var photos: [Photo] = Array(repeating: Photo(), count: 20)
    
    var body: some View {
        ASCollectionView(data: photos) { item, _ in
            item
        }
        .layout {
            .grid(
                layoutMode:.fixedNumberOfColumns(3),
                itemSpacing: 4,
                lineSpacing: 20
            )
        }
        .padding(.top, 20)
        .navigationTitle("Gallery")
    }
}

struct GalleryView_Previews: PreviewProvider {
    static let friend: Friend = Friend(id: 0, firstName: "First", lastName: "Last", avatar: Image(systemName: ""))
    
    static var previews: some View {
        GalleryView(friend: friend)
    }
}
