//
//  SpacerMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 26.02.2024.
//

import SwiftUI

struct SpacerMyFirstProject: View {
    var body: some View {
//        HStack(spacing: 0) {
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(Color.orange)
//            
//            Rectangle()
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//            
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(Color.orange)
//        }
//        .background(Color.yellow)
//        //.padding(.horizontal, 200)
//        .background(Color.blue)
        
        
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                
                Image(systemName: "gear")

            }
            .font(.title)
            //.background(Color.yellow)
            .padding(.horizontal)
            //.background(Color.blue)
            
            Spacer()

            Rectangle()
                .frame(height: 55)
        }
        //.background(Color.yellow)
    }
}

#Preview {
    SpacerMyFirstProject()
}
