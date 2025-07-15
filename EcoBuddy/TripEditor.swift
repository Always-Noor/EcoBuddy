//
//  TripEditor.swift
//  EcoBuddy
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct TripEditor: View {
    var body: some View {
        VStack {
            HStack {
                Text("Items")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button {

                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    TripEditor()
}
