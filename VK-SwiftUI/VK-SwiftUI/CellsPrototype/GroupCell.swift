//
//  GroupCell.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 26.12.2022.
//

import SwiftUI

struct GroupCell: View {
    var body: some View {
        CustomStack {
            HStack {
                AvatarView()
                Text("Group Name")
                    .font(.system(size: 20))
                    .lineLimit(2)
                    .layoutPriority(1)
                Spacer()
            }
            .background(Color.white)
            .cornerRadius(15)
            .padding(.horizontal, 5)
            .padding(.vertical, 1)
        }
    }
}

struct GroupCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupCell()
    }
}
