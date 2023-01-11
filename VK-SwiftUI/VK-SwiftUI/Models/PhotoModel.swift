//
//  PhotoModel.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 08.01.2023.
//

import SwiftUI

struct Photo: View, Identifiable {
    
    var id = UUID()
    let url = URL(string: "https://picsum.photos/100")
    
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: { ProgressView() }
            .frame(width: 100, height: 100)
    }
}
