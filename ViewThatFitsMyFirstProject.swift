//
//  ViewThatFitsMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 14.04.2024.
//

import SwiftUI

struct ViewThatFitsMyFirstProject: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display")
                Text("This is some text!")
            }
        }
        .frame(height: 300)
        .padding(50)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsMyFirstProject()
}
