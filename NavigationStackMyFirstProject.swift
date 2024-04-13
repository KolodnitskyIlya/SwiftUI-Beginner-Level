//
//  NavigationStackMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 11.04.2024.
//

import SwiftUI

struct NavigationStackMyFirstProject: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        
        // NavigationView not lazy - possible overload
        // Required NavigationStack
        
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button("Super segue!") {
                        stackPath.append(contentsOf: [
                            "Coconut", "Watermelon", "Mango"
                        ])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                }
            }
            .navigationTitle("Nav Bootcamp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("ANOTHER SCREEN: \(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    
    var body: some View {
        Text("Screen \(value)")
    }
}

#Preview {
    NavigationStackMyFirstProject()
}
