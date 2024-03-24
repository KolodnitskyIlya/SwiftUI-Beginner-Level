//
//  TextEditorMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 06.03.2024.
//

import SwiftUI

struct TextEditorMyFirstProject: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    //.foregroundColor(.red)
                    .colorMultiply(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                
                Spacer()
            }
            .padding()
            //.background(Color.green)
            .navigationTitle("TextEditor Project")
        }
    }
}

#Preview {
    TextEditorMyFirstProject()
}
