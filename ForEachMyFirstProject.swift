//
//  ForEachMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 26.02.2024.
//

import SwiftUI

struct ForEachMyFirstProject: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            
            ForEach(0..<100) { index in
                Circle()
                    .frame(height: 50)
            }
        }
    }
}

#Preview {
    ForEachMyFirstProject()
}
