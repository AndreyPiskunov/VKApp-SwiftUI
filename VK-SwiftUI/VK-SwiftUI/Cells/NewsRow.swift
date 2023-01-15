//
//  NewsRow.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 15.01.2023.
//

import SwiftUI

struct NewsRow: View {
    let news: News
    var body: some View {
        VStack {
            HStack {
                CellAvatarView(url: URL(string: news.avatarURL ?? ""))
                    .padding(.leading)
                VStack(alignment: .leading) {
                    Text(news.creatorName ?? "None")
                        .font(.title2)
                    Text(Date(timeIntervalSince1970: TimeInterval(news.date)).timeAgoDisplay())
                        .font(.subheadline)
                }
                Spacer()
            }
            Text(news.text)
                .padding()
        }
    }
}

struct NewsRow_Previews: PreviewProvider {
    static var previews: some View {
        NewsRow(news: News(sourceID: 0, date: 1648993459, text: "hsjdfhsbdhfbshbfhkbhdbjhfj", postID: 34))
    }
}
