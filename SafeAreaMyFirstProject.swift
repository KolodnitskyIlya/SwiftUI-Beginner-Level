//
//  SafeAreaMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 27.02.2024.
//

import SwiftUI

struct SafeAreaMyFirstProject: View {
    var body: some View {
//        ZStack {
//            //background
//            Color.blue
//                .ignoresSafeArea()
//            
//            //foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
        
        
        //ZStack {
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
            
            ScrollView{
                VStack {
                    Text("Title goes here")
                        .padding()
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) { index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
            //.background(Color.blue)
            .background(
                Color.red
                    //.edgesIgnoringSafeArea(.all)  // old
                    .ignoresSafeArea(edges: .all)
            )
            
        //}
    }
}

#Preview {
    SafeAreaMyFirstProject()
}
