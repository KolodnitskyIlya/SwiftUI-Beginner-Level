//
//  ContentUnavailableViewMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 14.04.2024.
//

import SwiftUI

struct ContentUnavailableViewMyFirstProject: View {
    var body: some View {
        if #available(iOS 17.0, *) {
            ContentUnavailableView.search(text: "abc")
            
            ContentUnavailableView(
                "No Internet Connection",
                systemImage: "wifi.slash",
                description: Text("Please connect to the internet and try again.")
            )
        } else {
            // Fallback on earlier versions
            // FakeContentUnavailableView()
        }
    }
}

#Preview {
    ContentUnavailableViewMyFirstProject()
}
