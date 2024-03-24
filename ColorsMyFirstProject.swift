//
//  ColorsMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 24.02.2024.
//

import SwiftUI

struct ColorsMyFirstProject: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                Color.primary
                
                //Color(#colorLiteral(red: 0.6584438682, green: 0.9213224053, blue: 0.8020598292, alpha: 1))
                
                //Color(UIColor.secondarySystemGroupedBackground)
                
                //Color("CustomColor")
            )
            .frame(width: 300, height: 200)
        
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.5), radius: 10, x: 20.0, y: 20.0)
            
    }
}

#Preview {
    ColorsMyFirstProject()
}

