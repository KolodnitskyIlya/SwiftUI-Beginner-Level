//
//  IconsMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 25.02.2024.
//

import SwiftUI

struct IconsMyFirstProject: View {
    var body: some View {
        Image(systemName: "person.crop.circle.badge.exclamationmark")
            .renderingMode(.original)
        
            //.resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            //.scaledToFill()
        
            .font(.largeTitle)
            //.font(.system(size: 200))
            //.foregroundColor(Color(#colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1)))
        
            //.frame(width: 300, height: 300)
        
            //.clipped()
    }
}

#Preview {
    IconsMyFirstProject()
}
