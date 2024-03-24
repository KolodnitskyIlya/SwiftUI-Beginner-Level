//
//  IfLetGuardMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 10.03.2024.
//

import SwiftUI

struct IfLetGuardMyFirstProject: View {
    
    @State var currentUserID: String? = "testuser123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                } 
                
                // DO NOT USER ! EVER!!!!!!!!
                // DO NOT FORCE UNWRAP VALUES
                /* 
                 Text(displayText!)
                    .font(.title) 
                 */
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadData2() {
        
        guard let userID = currentUserID else {
            displayText = "Error. There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardMyFirstProject()
}
