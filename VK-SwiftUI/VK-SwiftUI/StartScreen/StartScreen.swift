//
//  StartScreen.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 28.12.2022.
//

import SwiftUI

struct StartScreenView: View {
    @State private var isActive = false
    @State private var size = 0.6
    @State private var opacity = 0.8
    
    var body: some View {
        if isActive {
            LoginScreenView()
        } else {
            VStack {
                VStack {
                    Image("VK")
                        .resizable()
                        .frame(width: 100, height: 100)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            .background(Color("BrandColor"))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
    }
}

struct StartScreenView_Previews: PreviewProvider {
    static var previews: some View {
        StartScreenView()
    }
}
