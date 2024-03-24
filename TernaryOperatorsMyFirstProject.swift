//
//  TernaryOperatorsMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 29.02.2024.
//

import SwiftUI

struct TernaryOperatorsMyFirstProject: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE!!!" : "ENDING STATE.")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50
                )
            
            
            
//            if isStartingState{
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.red)
//                    .frame(width: 200, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .fill(Color.blue)
//                    .frame(width: 200, height: 100)
//            }
            
            
            Spacer()
        }
    }
}

#Preview {
    TernaryOperatorsMyFirstProject()
}
