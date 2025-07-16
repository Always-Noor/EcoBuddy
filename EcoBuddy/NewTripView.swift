//
//  NewTripView.swift
//  EcoBuddy
//
//  Created by Orvs on 7/15/25.
//

import SwiftUI

struct NewTripView: View {
    @State private var selectedOption = "Select an option"

    var body: some View {
        VStack {
            HStack {
                Text("Add new item")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
                Menu {
                    Button("Shoes") {
                        selectedOption = "Shoes"
                    }
                    Button("Dress") {
                        selectedOption = "Dress"
                    }
                    Button("Bag") {
                        selectedOption = "Bag"
                    }
                    Button("Others") {
                        selectedOption = "Others"
                    }
                } label: {
                    Text(selectedOption)
                        .padding()
                }

                }
            }
            
            Button {
            } label: {
                Text("Save")
            }
        }
    }

#Preview {
    NewTripView()
}
