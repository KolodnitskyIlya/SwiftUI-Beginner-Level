//
//  NavigationViewMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 04.03.2024.
//

import SwiftUI

struct NavigationViewMyFirstProject: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, World!",
                               destination: MyOthersScreen())
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading: 
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                ,
                trailing:
                    NavigationLink(
                    destination: MyOthersScreen(),
                    label: {
                        Image(systemName: "gear")
                    })
                    .accentColor(.red)
            )
        }
    }
}

struct MyOthersScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
                .navigationTitle("Green Screen!")
                //.navigationBarHidden(true)
            
            VStack {
                Button("BACK BUTTON") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click here", destination: Text("3rd screen!"))
            }
        }
    }
}

#Preview {
    NavigationViewMyFirstProject()
}
