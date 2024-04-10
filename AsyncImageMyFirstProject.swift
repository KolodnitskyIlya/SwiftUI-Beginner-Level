//
//  AsyncImageMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 09.04.2024.
//

import SwiftUI

struct AsyncImageMyFirstProject: View {
    
    let url = URL(string: "https://mobimg.b-cdn.net/v3/fetch/2f/2f17c8186f5e498000579700660c5734.jpeg")
    
    var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                //.frame(width: 200, height: 300)
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
    }
}

#Preview {
    AsyncImageMyFirstProject()
}
