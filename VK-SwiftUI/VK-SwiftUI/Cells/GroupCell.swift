//
//  GroupCell.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 26.12.2022.
//

import SwiftUI

struct GroupCell: View {
    let group: Group
    
    var body: some View {
        HStack {
            CellAvatarView()
                .padding(.leading, 5)
                .padding(.vertical, 5)
            Text("\(group.name)")
                .font(.system(size: 20))
                .lineLimit(2)
                .layoutPriority(1)
                .padding()
            Spacer()
        }
        .background(Color.white)
        .cornerRadius(15)
    }
}

struct GroupCell_Previews: PreviewProvider {
    static let group: Group = Group(id: 0, name: "Name", avatar: Image(systemName: ""))
    
    static var previews: some View {
        List {
            GroupCell(group: group)
        }
    }
}
