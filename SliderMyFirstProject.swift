//
//  SliderMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 09.03.2024.
//

import SwiftUI

struct SliderMyFirstProject: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            
            Text(
                String(format: "%.2f", sliderValue)
                //"\(sliderValue)"
            )
            .foregroundColor(color)
            
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 0.5,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel: 
                    Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                ,
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                })
                .accentColor(.red)
        }
    }
}

#Preview {
    SliderMyFirstProject()
}
