//
//  SafeAreaInsetMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 12.04.2024.
//

import SwiftUI

struct SafeAreaInsetMyFirstProject: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay (
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//                
//                ,alignment: .bottom
//            )
            
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(Circle())
//                    .padding()
            }
            
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding()
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(Circle())
//                    .padding()
            }
        }
    }
}

#Preview {
    SafeAreaInsetMyFirstProject()
}
