//
//  DatePickerMyFirstProject.swift
//  MyFirstProject
//
//  Created by macbook on 09.03.2024.
//

import SwiftUI

struct DatePickerMyFirstProject: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .full
        return formatter
    }
    
    var body: some View {
//        DatePicker("Select a Date", selection: $selectedDate)
//            .accentColor(.red)
//            .datePickerStyle(
//                CompactDatePickerStyle()
//                //GraphicalDatePickerStyle()
//                //WheelDatePickerStyle()
//            )
        
        
//        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
        
        
//        DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate)
        
        
        VStack {
            Text("SELECTED DATE IS:")
            
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            
            DatePicker("Select a Date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date])
                .accentColor(.red)

        }
    }
}

#Preview {
    DatePickerMyFirstProject()
}
