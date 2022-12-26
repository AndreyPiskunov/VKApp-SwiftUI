//
//  FriendCell.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 26.12.2022.
//

import SwiftUI

struct FriendCell: View {
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
                Circle()
                    .frame(width: 10, height: 10)
                    .overlay(Color.green)
                    .clipShape(Circle())
                    .padding(.horizontal, 8)
                Text("Имя Фамилия")
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

struct FriendCell_Previews: PreviewProvider {
    static var previews: some View {
        FriendCell()
    }
}
