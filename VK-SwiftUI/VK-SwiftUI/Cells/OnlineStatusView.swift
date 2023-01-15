//
//  OnlineStatusView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 15.01.2023.
//

import SwiftUI

struct OnlineStatusView <Content: Shape>: View {
    let status: Int?
    let content: Content
    init(status: Int?, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.status = status
    }
    var body: some View {
        content
            .frame(width: 10, height: 10)
            .overlay(status == 1 ? Color.green : Color.gray)
            .clipShape(Circle())
            .padding(8)
    }
}
