//
//  FrameMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 25.02.2024.
//

import SwiftUI

struct FrameMyFirstProject: View {
    var body: some View {
        Text("Hello, World!")
//            .background(Color.green)
//            //.frame(width: 300, height: 300, alignment: .leading)
//            //.background(Color.red)
//        
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(Color.red)
        
            .background(Color.red)
        
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
        
            .frame(width: 150)
            .background(Color.purple)
        
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
        
            .frame(height: 400)
            .background(Color.green)
        
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
        
            
    }
}

#Preview {
    FrameMyFirstProject()
}
