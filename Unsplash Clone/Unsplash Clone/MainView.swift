//
//  MainView.swift
//  Unsplash Clone
//
//  Created by Keisuke Miyamoto on 2024/02/18.
//

import Foundation
import SwiftUI

// custom tab view : https://qiita.com/hoshi005/items/6e4b9e9ce2a77e6283d6

struct MainView: View {
    @State var selected: Categorys = Categorys.Editorial
    var customGray = Color(red: 0.05, green: 0.05, blue: 0.05)
    
    var body: some View {
        ZStack {
            TabView (selection: $selected) {
                ForEach (Categorys.allCases, id:\.rawValue) { category in
                    PhotoListByCategory(category: category)
                        .tag(category)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(maxHeight: .infinity)
            
            VStack (spacing: 0) {
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .foregroundColor(customGray)
                LinearGradient(gradient: Gradient(colors: [customGray, .clear]), startPoint: .top, endPoint: .bottom)
                    .frame(maxWidth: .infinity)
                    .frame(height: 90)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
            VStack (spacing: 8) {
                Text("Unsplash Clone")
                    .foregroundStyle(.white)
                    .font(.title3)
                    .bold()
                    .padding(.bottom, 8)
                
                // categorys
                VStack (spacing: 0) {
                    ScrollViewReader { proxy in
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack (spacing: 20) {
                                ForEach (Categorys.allCases, id: \.rawValue) { category in
                                    VStack {
                                        Text(category.rawValue)
                                            .fontWeight(.medium)
                                            .font(.system(size: 14))
                                        
                                        Rectangle ()
                                            .frame(maxWidth: .infinity)
                                            .frame(height: 3)
                                            .foregroundColor(selected == category ? .white : .clear)
                                    }
                                    .id(category)
                                    .onTapGesture {
                                        selected = category
                                    }
                                    .onChange(of: selected) {
                                        withAnimation {
                                            proxy.scrollTo(selected, anchor: UnitPoint(x: 0.5, y: 0))
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    Rectangle ()
                        .frame(maxWidth: .infinity)
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.5))
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    MainView()
        .preferredColorScheme(.dark)
}
