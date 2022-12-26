//
//  GroupCell.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 26.12.2022.
//

import SwiftUI

struct GroupCell: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            HStack {
                Image("Image")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: 70)
                    .clipShape(Circle())
                    .background(Circle().fill(Color.white))
                    .shadow(color: .gray, radius: 1)
                    .padding(.leading, 10)
                    .padding(.vertical, 10)
                Text("Group Name")
                    .font(.system(size: 20))
                    .lineLimit(2)
                    .layoutPriority(1)
                Spacer()
            }
            .background(Color.white)
            .cornerRadius(15)
            .padding(.horizontal, 5)
        }
    }
}

struct GroupCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupCell()
    }
}
