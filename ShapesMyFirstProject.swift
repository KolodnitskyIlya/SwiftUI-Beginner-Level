//
//  ShapesMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 24.02.2024.
//

import SwiftUI

struct ShapesMyFirstProject: View {
    var body: some View {
        //Circle()
            //.fill(Color.red)
            //.foregroundColor(.pink)
        
            //.stroke()
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth: 30)
            //.stroke(Color.orange, style:               StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
        
            //.trim(from: 0.2, to: 1.0)
            //.stroke(Color.purple, lineWidth: 50)
        
        //Ellipse()
            //.fill(Color.red)
            //.trim(from: 0.2, to: 1.0)
            //.stroke(Color.orange, style:               StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            //.frame(width: 200, height: 100)
            //.foregroundColor(.pink)
        
        //Capsule(style: .continuous)
            //.fill(Color.red)
            //.trim(from: 0.2, to: 1.0)
            //.stroke(Color.orange, style:               StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            //.frame(width: 200, height: 100)
            //.foregroundColor(.pink)
        
        //Rectangle()
        RoundedRectangle(cornerRadius: 10.0)
            //.fill(Color.red)
            .trim(from: 0.2, to: 1.0)
            //.stroke(Color.orange, style:               StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            .frame(width: 300, height: 200)
            

            
        
            
            
    }
}

#Preview {
    ShapesMyFirstProject()
}
