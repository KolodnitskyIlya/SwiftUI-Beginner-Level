//
//  BackgroundAndoverlayMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 25.02.2024.
//

import SwiftUI

struct BackgroundAndoverlayMyFirstProject: View {
    var body: some View {
//        Text("Hello, World!")
//
//            .background(
//                //Color.red
//                //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//        
//            .background(
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
        
        
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100)
//        
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 110, height: 110)
//            )
        
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                ,alignment: .bottomTrailing
//            )
        
        
        Image(systemName: "heart.fill")
            .foregroundColor(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)))
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1)), radius: 10, x: 5.0, y: 10.0)
                    .overlay(
                        Circle()
                            .fill(Color(#colorLiteral(red: 0.5563425422, green: 0.9793455005, blue: 0, alpha: 1)))
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.pink)
                            )
                            .shadow(color: Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1)), radius: 10, x: 10.0, y: 10.0)
                        , alignment: .bottomTrailing
                    )
                    
            )
        
    }
}

#Preview {
    BackgroundAndoverlayMyFirstProject()
}
