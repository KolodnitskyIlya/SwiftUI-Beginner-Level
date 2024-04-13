//
//  ListSwipeActionsMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 10.04.2024.
//

import SwiftUI

struct ListSwipeActionsMyFirstProject: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(
                        edge: .trailing,
                        allowsFullSwipe: true) {
                            Button("Archive") {
                                
                            }
                            .tint(.green)
                            Button("Save") {
                                
                            }
                            .tint(.blue)
                            Button("Junk") {
                                
                            }
                            .tint(.black)
                        }
                
                    .swipeActions(
                        edge: .leading,
                        allowsFullSwipe: false) {
                            Button("Share") {
                                
                            }
                            .tint(.yellow)
                        }
            }
            //.onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

#Preview {
    ListSwipeActionsMyFirstProject()
}
