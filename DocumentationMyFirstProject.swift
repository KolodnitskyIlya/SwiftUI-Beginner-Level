//
//  DocumentationMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 09.03.2024.
//

import SwiftUI

struct DocumentationMyFirstProject: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    // ILYA - Working copy - things to do:
    /*
     1) Fix title
     2) Fix alert
     */ 
    // option + command + left arrow (right arrow)
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing: 
                    Button("ALERT", action: {
                        showAlert.toggle()
                    })
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert!")
                })
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    // MARK: FUNCTIONS
    
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

#Preview {
    DocumentationMyFirstProject()
}
