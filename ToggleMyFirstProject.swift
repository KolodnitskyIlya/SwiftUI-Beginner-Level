//
//  ToggleMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 06.03.2024.
//

import SwiftUI

struct ToggleMyFirstProject: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change status")
                })
            .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 1, green: 0.1857388616, blue: 0.5733950138, alpha: 1))))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleMyFirstProject()
}
