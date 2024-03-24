//
//  TextMyNewProject.swift
//  MyFirstProject
//
//  Created by macbook on 22.02.2024.
//

import SwiftUI

struct TextMyNewProject: View {
    var body: some View {
        Text("Hello, World!".uppercased())
            //.font(.body)
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
            //.underline(true, color: Color.red)
            //.italic()
            //.strikethrough()
            //.strikethrough(true, color: Color.blue)
        
            //.font(.system(size: 40, weight: .semibold, design: .rounded))
        
            //.baselineOffset(50.0)
            //.kerning(1.0)
        
            //.multilineTextAlignment(.leading)
            .foregroundColor(.red)
        
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
            
    }
}

#Preview {
    TextMyNewProject()
}
