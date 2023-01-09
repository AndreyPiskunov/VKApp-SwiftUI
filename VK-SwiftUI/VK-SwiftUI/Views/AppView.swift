//
//  AppView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

struct AppView: View {
    @State private var isUserAuth: Bool = false
    
    var body: some View {
        
        HStack {
            if isUserAuth {
                MainView()
            } else {
                LoginView(isUserAuth: $isUserAuth)
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
