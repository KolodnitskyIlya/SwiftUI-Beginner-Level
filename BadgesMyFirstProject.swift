//
//  BadgeMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 10.04.2024.
//

import SwiftUI

// List
// TabView

struct BadgesMyFirstProject: View {
    var body: some View {
        List {
            Text("Hello, world!")
                .badge(5)
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(5)
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

#Preview {
    BadgesMyFirstProject()
}

