//
//  AnimationMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 01.03.2024.
//

import SwiftUI

struct AnimationMyFirstProject: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation (
                    .default
                    //.delay(2.0)
                    //.repeatCount(5, autoreverses: true)
                    .repeatForever()
                ) {
                    isAnimated.toggle() 
                }
            }
              
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
//                .animation(.default
//                           //.delay(2.0)
//                           //.repeatCount(5, autoreverses: true)
//                           .repeatForever())
            
            Spacer()
        }
    }
}

#Preview {
    AnimationMyFirstProject()
}
