//
//  GradientsMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 25.02.2024.
//

import SwiftUI

struct GradientsMyFirstProject: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
                
//                LinearGradient(
//                   gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1))]),
//                   startPoint: .topLeading,
//                   endPoint: .bottom)
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)), Color(#colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1))]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 500)
                
                AngularGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1)), Color(#colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1))]),
                    center: .center,
                    angle: .degrees(45))
                
            )
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    GradientsMyFirstProject()
}
