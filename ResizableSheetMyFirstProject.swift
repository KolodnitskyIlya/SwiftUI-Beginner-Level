//
//  ResizableSheetMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 12.04.2024.
//

import SwiftUI

struct ResizableSheetMyFirstProject: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me!") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.25), .height(500), .medium, .large])
//                .presentationDetents([.height(500)])
//                .presentationDetents([.fraction(0.5), .medium, .large], selection: $detents)
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
        }
//        .onAppear {
//            showSheet = true
//        }
    }
}
 
struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("20%") {
                    detents = .fraction(0.2)
                }

                Button("MEDIUM") {
                    detents = .medium 
                }
                
                Button("600 px") {
                    detents = .height(600)
                }
                
                Button("LARGE") {
                    detents = .large
                }
            }
        }
        .presentationDetents([.fraction(0.2), .medium, .height(600), .large], selection: $detents)
        .presentationDragIndicator(.hidden)
    }
}

#Preview {
    ResizableSheetMyFirstProject()
}
