//
//  ImageMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 25.02.2024.
//

import SwiftUI

struct ImageMyFirstProject: View {
    var body: some View {
        Image("therock")
            .resizable()
        
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFill()
        
            .frame(width: 300, height: 400)
            //.clipped()
        
            //.cornerRadius(150)
        
            .clipShape(
                Circle()
                //RoundedRectangle(cornerRadius: 25.0)
                //Ellipse()
            )
        
            Image("google")
            .renderingMode(.template) //просто иконка не прозрачная(а так только очертания красные). Также можно через Assets поменять
        
            .resizable()
        
            .scaledToFit()
        
            .frame(width: 300, height: 200)
        
            .foregroundColor(.red)
    }
}

#Preview {
    ImageMyFirstProject()
}
