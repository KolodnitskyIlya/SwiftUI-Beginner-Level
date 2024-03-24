//
//  BindingMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 28.02.2024.
//

import SwiftUI

struct BindingMyFirstProject: View {
    
    @State var backgroundColor: Color = Color.green
    
    @State var title: String = "Title"
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingMyFirstProject()
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    
    @State var buttonColor: Color = Color.blue
    
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
            buttonColor = Color.pink
            title = "NEW TITLE!!!!!!"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
} 
