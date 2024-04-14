//
//  ControlGroupMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 14.04.2024.
//

import SwiftUI

struct ControlGroupMenuMyFirstProject: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup("One") {
                Button("Uno") {
                    
                }
                Button("Dos") {
                    
                }
//                Button("Tres") {
//                    
//                }
                Menu("How are you?") {
                    Button("Good") {
                        
                    }
                    Button("Bad") {
                        
                    }
                }
            }
            Button("Two") {
                
            }
            Menu("Three") {
                Button("Hi") {
                    
                }
                Button("Hello") {
                    
                }
            }
        }
    }
}

#Preview {
    ControlGroupMenuMyFirstProject()
}
