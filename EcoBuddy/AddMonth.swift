//
//  AddMonth.swift
//  EcoBuddy
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct AddMonth: View {
    var body: some View {
        VStack {
            Text("Add New Month")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            TextField("Enter the month and year", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Button {

            } label: {
                    Text("Save")
            } /*Closes label*/
            
        } /*Closes Vstack*/
        
    } /*Closes Body*/
    
} /*Closes View*/

#Preview {
    AddMonth()
}
