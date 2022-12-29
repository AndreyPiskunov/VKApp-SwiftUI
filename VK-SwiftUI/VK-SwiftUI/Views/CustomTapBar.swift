//
//  CustomTapBar.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case newspaper = "newspaper"
    case friends = "person"
    case groups = "person.2"
}

struct CustomTapBar: View {
    @Binding var selectedTab: Tab
    
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                        .foregroundColor(selectedTab == tab ? Color("BrandColor") : .gray)
                        .font(.system(size: 24))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .cornerRadius(20)
            .padding(15)
        }
    }
}

struct CustomTapBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTapBar(selectedTab: .constant(.newspaper))
    }
}
