//
//  FriendCell.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 26.12.2022.
//

import SwiftUI

struct FriendCell: View {
    var body: some View {
        CustomStack {
            HStack {
                AvatarView()
                Circle()
                    .frame(width: 10, height: 10)
                    .overlay(Color.green)
                    .clipShape(Circle())
                    .padding(.horizontal, 8)
                Text("Name Friend")
                    .font(.system(size: 20))
                    .lineLimit(2)
                    .layoutPriority(1)
                Spacer()
            }
            .background(Color.white)
            .cornerRadius(15)
            .padding(.horizontal, 5)
            .padding(.vertical, 2)
        }
    }
}

struct FriendCell_Previews: PreviewProvider {
    static var previews: some View {
        FriendCell()
    }
}
