//
//  ExtractSubviewsMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 28.02.2024.
//

import SwiftUI

struct ExtractSubviewsMyFirstProject: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1))
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack{
            MyItem(title: "Apples", count: 1, color: .red)
            
            MyItem(title: "Oranges", count: 10, color: .orange)
            
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

#Preview {
    ExtractSubviewsMyFirstProject()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
