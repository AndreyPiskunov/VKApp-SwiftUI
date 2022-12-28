//
//  AvatarView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 26.12.2022.
//

import SwiftUI

struct AvatarView: View {
    var body: some View {
        Image("Image")
            .resizable()
            .scaledToFit()
            .modifier(AvatarStyleModifier(shadowColor: .gray,
                                          shadowRadius: 3))
            .padding(.leading, 10)
            .padding(.vertical, 10)
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

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView()
    }
}
