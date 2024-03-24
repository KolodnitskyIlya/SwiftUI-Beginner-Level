//
//  IntroView.swift
//  MyFirstProject
//
//  Created by macbook on 12.03.2024.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // background
            RadialGradient(colors: [Color(#colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1))],
                           center: .topLeading,
                           startRadius: 5,
                           endRadius: UIScreen.main.bounds.height
            )
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
            
            
        }
    }
}

#Preview {
    IntroView()
}
