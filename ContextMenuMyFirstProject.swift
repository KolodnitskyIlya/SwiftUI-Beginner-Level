//
//  ContextMenuMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 06.03.2024.
//

import SwiftUI

struct ContextMenuMyFirstProject: View {
    
    @State var backgroundColor: Color = Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("SwiftUI learning")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(ContextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            
            
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
        }))
        
    }
}

#Preview {
    ContextMenuMyFirstProject()
}
