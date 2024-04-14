//
//  ObservableMacroMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 14.04.2024.
//

import SwiftUI

//class ObservableViewModel: ObservableObject {
//    
//    @Published var title: String = "Some title"
//}
//
//struct ObservableMyFirstProject: View {
//    
//    @StateObject private var viewModel = ObservableViewModel()
//    
//    var body: some View {
//        VStack(spacing: 40) {
//            Button(viewModel.title) {
//                viewModel.title = "new title!"
//            }
//            
//            SomeChildView(viewModel: viewModel)
//            
//            SomeThirdView()
//        }
//        .environmentObject(viewModel)
//    }
//}
//
//struct SomeChildView: View {
//    
//    @ObservedObject var viewModel: ObservableViewModel
//    
//    var body: some View {
//        Button(viewModel.title) {
//            viewModel.title = "Second VIEW"
//        }
//    }
//}
//
//struct SomeThirdView: View {
//    
//    @EnvironmentObject var viewModel: ObservableViewModel
//    
//    var body: some View {
//        Button(viewModel.title) {
//            viewModel.title = "Third view!!!!!!!!!!"
//        }
//    }
//}

// -----------------------------------------------------------------

@Observable class ObservableViewModel {
    
    var title: String = "Some title"
    //@ObservationIgnored var value: String = "Some title"
}

struct ObservableMyFirstProject: View {
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "new title!"
            }
            
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Second VIEW"
        }
    }
}

struct SomeThirdView: View {
    
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third view!!!!!!!!!!"
        }
    }
}

#Preview {
    ObservableMyFirstProject()
}
