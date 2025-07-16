//
//  AddMonth.swift
//  EcoBuddy
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct AddMonth: View {
    @State private var selectedOption = "Select an option"
    @Bindable var monthData: MonthData
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            Text("Add New Month")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            /*Menu {
                Button("December") {
                    selectedOption = "December"
                }
                Button("November") {
                    selectedOption = "November"
                }
                Button("October") {
                    selectedOption = "October"
                }
                Button("September") {
                    selectedOption = "September"
                }
                Button("August") {
                    selectedOption = "August"
                }
                Button("July") {
                    selectedOption = "July"
                }
                Button("June") {
                    selectedOption = "June"
                }
                Button("May") {
                    selectedOption = "May"
                }
                Button("April") {
                    selectedOption = "April"
                }
                Button("March") {
                    selectedOption = "March"
                }
                Button("February") {
                    selectedOption = "February"
                }
                Button("January") {
                    selectedOption = "January"
                }
            }   label: {
                    Text(selectedOption)
                        .padding()
            }*/
            
            TextField("Enter the month", text: $monthData.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Button {
                addMonth()
            } label: {
                    Text("Save")
            } /*Closes label*/
            
        } /*Closes Vstack*/
        
    } /*Closes Body*/
    
    func addMonth() {
        let month = MonthData(title: monthData.title)
        modelContext.insert(month)
    }
    
} /*Closes View*/

#Preview {
    AddMonth(monthData: MonthData(title: ""))
}
