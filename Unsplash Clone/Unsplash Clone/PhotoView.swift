//
//  PhotoView.swift
//  Unsplash Clone
//
//  Created by Keisuke Miyamoto on 2024/02/18.
//

import Foundation
import SwiftUI

struct PhotoView: View {
    var photo: PhotoModel
    
    var body: some View {
        ZStack {
            Image(photo.photo)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .overlay {
                    ZStack {
                        VStack {
                            Spacer()
                            LinearGradient(gradient: Gradient(colors: [.clear, .clear, .clear,  .black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        }
                        
                        Text(photo.photographerName)
                            .frame(maxWidth: .infinity,
                                   maxHeight: .infinity,
                                   alignment: .bottomLeading)
                            .foregroundColor(.white)
                            .font(.system(size: 12, weight: .medium))
                            .padding(8)
                    }
                }
        }
    }
}

#Preview {
//    ContentView()
    PhotoView(photo: PhotoModel(photo: "post1", photographerName: "AAA", category: Categorys.Wallpapers))
}
