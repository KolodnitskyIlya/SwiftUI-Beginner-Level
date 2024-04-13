//
//  GroupMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 12.04.2024.
//

import SwiftUI

struct GroupMyFirstProject: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")
            
            Group {
                Text("Hello, world!")
                Text("Hello, world!")
            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

#Preview {
    GroupMyFirstProject()
}
