//
//  Links.swift
//  EcoBuddy
//
//  Created by Scholar on 7/17/25.
//

import SwiftUI

struct Links: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.748, green: 0.854, blue: 0.857)
                .ignoresSafeArea()
            
            Spacer()
            Link(destination: URL(string: "https://carbonliteracy.com/fast-fashions-carbon-footprint/")!) {
                Text("Carbon Literacy Project")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.611, green: 0.677, blue: 0.436))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 600.0)
            }
            Text("This article talks about about the significant hidden costs of fast fashion, and motivate action by showing how thoughtful consumer choices and systemic shifts in the industry can advance sustainability.")
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding(.bottom, 400.0)
                .padding(.horizontal)
            
            
        } //closes ZStack
    }
}

#Preview {
    Links()
}
