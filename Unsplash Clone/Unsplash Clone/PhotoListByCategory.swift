//
//  PhotoListByCategory.swift
//  Unsplash Clone
//
//  Created by Keisuke Miyamoto on 2024/02/18.
//

import SwiftUI

struct PhotoListByCategory: View {
    var category: Categorys
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            LazyVStack (spacing: 0) {
                ZStack {
                    Image(photoList.filter({$0.category == category}).last!.photo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width ,height: 350)
                        .clipped()
                        
                    if category == Categorys.Editorial {
                        Rectangle()
                            .foregroundColor(.clear)
                            .background(.black.opacity(0.3))
                    } else {
                        Rectangle()
                            .foregroundColor(.clear)
                            .background(.ultraThinMaterial)
                    }
                    
                    VStack {
                        Spacer()
                        LinearGradient(gradient: Gradient(colors: [.clear, .clear, .clear,  .black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                    
                    if category == Categorys.Editorial {
                        VStack (spacing: 16) {
                            Text("Photos for everyone")
                                .foregroundStyle(.white)
                                .font(.system(size: 30, weight: .heavy))
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .center)
                                .padding(.top, 180)
                            
                            Spacer()
                            
                            Text("Photo of the Day by Keisuke Miyamoto")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                        .padding(22)
                    } else {
                        VStack (spacing: 16) {
                            Spacer()
                            Text(category.rawValue)
                                .foregroundStyle(.white)
                                .font(.title)
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("This Unsplash Clone was created by Keisuke Miyamoto.")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Button {
                                
                            } label: {
                                Text("submit a photo")
                                    .foregroundStyle(.black)
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 36)
                                    .font(.system(size: 16))
    //                                .padding()
                                    .background(.white)
                                    .cornerRadius(6)
                            }
    //                        .buttonStyle(.bordered)
                        }
                        .padding(22)
                    }
                }
                
                ForEach (photoList, id: \.id) { photo in
                    if photo.category == category {
                        PhotoView(photo: photo)
                    }
                }
            }
        }
    }
}

#Preview {
    PhotoListByCategory(category: Categorys.Editorial)
}
