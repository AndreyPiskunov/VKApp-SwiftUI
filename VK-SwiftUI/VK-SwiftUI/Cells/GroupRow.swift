//
//  GroupCell.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 26.12.2022.
//

import SwiftUI

struct GroupRow: View {
    let group: Group
    
    var body: some View {
        HStack {
//            CellAvatarView()
            Text("\(group.name)")
                .font(.system(size: 20))
                .lineLimit(2)
                .layoutPriority(1)
                .padding()
            Spacer()
        }
        .frame(height: 50)
    }
}

struct GroupRow_Previews: PreviewProvider {
    static let group: Group = Group(id: 0, name: "Name", avatar: Image(systemName: ""))
    
    static var previews: some View {
        List {
            GroupRow(group: group)
        }
    }
}
