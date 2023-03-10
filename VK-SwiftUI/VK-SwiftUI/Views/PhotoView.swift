//
//  PhotoView.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 25.01.2023.
//

import SwiftUI

import SwiftUI

struct PhotoView: View, Identifiable {
    private let sizesByPriority: [SizeType] = [.x, .y, .z, .w, .r, .q, .p, .m, .o, .s]
    var photo: Photo
    var id = UUID()
    @State private var flipped: Bool
    
    init(photo: Photo) {
        self.photo = photo
        self.url = URL(string: Photo.findUrlInPhotoSizes(sizes: photo.sizes, sizesByPriority: sizesByPriority).src ?? "")
        _flipped = State(initialValue: (photo.likes?.userLikes == 1 ? true : false))
    }
    
    var url: URL?
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: geometry.size.width, height: geometry.size.width, alignment: .center)
                        .clipped()
                } placeholder: { ProgressView() }
                
                Image(systemName: "suit.heart.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor( flipped ? .red : .white)
                    .alignmentGuide(HorizontalAlignment.center, computeValue: {
                        (-geometry.size.width/2 + $0.width) })
                    .alignmentGuide(VerticalAlignment.center, computeValue: {
                        (-geometry.size.height/2 + $0.height) })
                    .rotation3DEffect((flipped ? Angle(degrees: 180): Angle(degrees: 0)), axis: (x: CGFloat(0), y: CGFloat(10), z: CGFloat(0)))
                    .animation(.default, value: flipped)
                    .onTapGesture {
                        self.flipped.toggle()
                        
                    }
            }
        }
    }
}

struct PhotoView_Preview: PreviewProvider {
    static let photo = Photo(id: 0, ownerID: 0, sizes: [Size(urlString: "https://picsum.photos/200", width: 100, height: 100, type: .x)], likes: Likes(userLikes: 0, count: 21))
    static var previews: some View {
        PhotoView(photo: photo)
            .frame(width: 200, height: 200, alignment: .center)
    }
}
