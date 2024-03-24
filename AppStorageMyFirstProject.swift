//
//  AppStorageMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 11.03.2024.
//

import SwiftUI

struct AppStorageMyFirstProject: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Emily"
                
                currentUserName = name
            }
        }
    }
}

//struct AppStorageMyFirstProject: View {
//    
//    @State var currentUserName: String?
//    
//    var body: some View {
//        VStack(spacing: 20) {
//            Text(currentUserName ?? "Add Name Here")
//            
//            if let name = currentUserName {
//                Text(name)
//            }
//            
//            Button("Save".uppercased()) {
//                let name: String = "Ilya"
//                
//                currentUserName = name
//                
//                UserDefaults.standard.set(name, forKey: "name")
//            }
//        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
//    }
//}




#Preview {
    AppStorageMyFirstProject()
}
