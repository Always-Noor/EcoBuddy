//
//  NewTripView.swift
//  EcoBuddy
//
//  Created by Orvs on 7/15/25.
//

import SwiftUI

struct NewTripView: View {
    var body: some View {
        VStack {
            Text("New Trip")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            TextField("Name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            Button {

            } label: {
                    Text("Save")
            }
        }
    }
}

#Preview {
    NewTripView()
}
