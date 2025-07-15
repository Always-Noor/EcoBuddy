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
            TextField("Name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    NewTripView()
}
