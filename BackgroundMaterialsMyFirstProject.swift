//
//  SwiftUIView.swift
//  MyFirstProject
//
//  Created by macbook on 09.04.2024.
//

import SwiftUI

struct BackgroundMaterialsMyFirstProject: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            //.background(Color.black.opacity(0.5))
            
            //.background(.thinMaterial)
            //.background(.thickMaterial)
            //background(.regularMaterial)
            .background(.ultraThinMaterial)
             
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("therock")

                
        )
    }
}

#Preview {
    BackgroundMaterialsMyFirstProject()
}
