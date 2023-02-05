//
//  GroupsListView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 29.12.2022.
//

import SwiftUI

struct GroupsListView: View {
    @ObservedObject var viewModel: GroupViewModel
    
    init(viewModel: GroupViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.groups) { group in
            NavigationLink {
            } label: {
                GroupRow(group: group)
            }
            .listRowSeparator(.hidden)
            .padding(5)
        }
        .onAppear { viewModel.fetch() }
        .listStyle(.plain)
    }
}

struct GroupsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GroupsListView(viewModel: GroupViewModel())
        }
    }
}
