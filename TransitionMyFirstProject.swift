//
//  TransitionMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 04.03.2024.
//

import SwiftUI

struct TransitionMyFirstProject: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
        
            VStack {
                Button("BUTTON") {
                    showView.toggle()
                }
                Spacer()
            }
            
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    //.transition(.slide)
                    //.transition(.move(edge: .leading))
                    //.transition(AnyTransition.opacity.animation(.easeInOut))
                    //.transition(AnyTransition.scale.animation(.easeInOut))
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)
                    ))
                
                    .animation(.easeInOut)
            }
            
            
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionMyFirstProject()
}
