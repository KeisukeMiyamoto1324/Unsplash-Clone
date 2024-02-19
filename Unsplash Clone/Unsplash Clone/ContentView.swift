//
//  ContentView.swift
//  Unsplash Clone
//
//  Created by Keisuke Miyamoto on 2024/02/18.
//

import SwiftUI

struct ContentView: View {
    @State var selected: String = "Editorial"
    
    init(){
        UITabBar.appearance().backgroundColor = UIColor.black
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
    }
    
    var body: some View {
        NavigationStack {
            TabView {
                MainView().tabItem { Image(systemName: "photo") }
                SearchView().tabItem { Image(systemName: "magnifyingglass") }
                PostView().tabItem { Image(systemName: "plus.square.fill") }
                UserView().tabItem { Image(systemName: "person") }
            }
            .accentColor(.white)
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
