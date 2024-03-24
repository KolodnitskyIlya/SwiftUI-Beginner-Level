//
//  ScrollViewMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 26.02.2024.
//

import SwiftUI

struct ScrollViewMyFirstProject: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false, content: {
//            HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300, height: 300)
//                }
//            }
//        })
        
        
        
        ScrollView{
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollViewMyFirstProject()
}
