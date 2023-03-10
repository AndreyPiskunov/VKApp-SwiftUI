//
//  AvatarView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 26.12.2022.
//

import SwiftUI

struct CellAvatarView: View {
    let url: URL?
    
    var body: some View {
        AsyncImage(url: url)
//            .resizable()
            .scaledToFit()
            .modifier(AvatarStyleModifier(shadowColor: .gray,
                                          shadowRadius: 3))
    }
}

struct AvatarStyleModifier: ViewModifier {
    let shadowColor: Color
    let shadowRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: 70)
            .clipShape(Circle())
            .background(Circle().fill(Color.white))
            .shadow(color: shadowColor, radius: shadowRadius)
    }
}

struct CellAvatarView_Previews: PreviewProvider {
    static let url = URL(string: "")
    static var previews: some View {
        CellAvatarView(url: url)
    }
}
