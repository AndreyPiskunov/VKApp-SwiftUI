//
//  CustomStack.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 27.12.2022.
//

import SwiftUI

struct CustomStack<Content: View>: View {
    let content: Content
    let color: Color
    
    init(color: Color = .green,
         @ViewBuilder content: () -> Content) {
        self.color = color
        self.content = content()
    }
    
    var body: some View {
        VStack {
            content
        }.background(color)
    }
}
