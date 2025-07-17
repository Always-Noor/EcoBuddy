//
//  ContentView.swift
//  EcoBuddy
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(red: 0.748, green: 0.854, blue: 0.857)
                    .ignoresSafeArea()
                Spacer()
                NavigationLink(destination: TripEditor()) {
                    Text("36")
                        .shadow(radius: 4)
                        .font(.custom(
                            "Earth And Sky", size: 140))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.535, green: 0.59, blue: 0.376))
                        .multilineTextAlignment(.center)
                        .padding(.all)
                        .padding(.bottom, 50.0)
                }
                Text("Total Carbon Footprint")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.486, green: 0.429, blue: 0.443))
                    .multilineTextAlignment(.center)
                    .padding(.top, 120.0)
                Spacer()
                    .toolbar {
                        ToolbarItem(placement: .bottomBar) {
                            NavigationLink(destination: EcoSpark()) {
                                Image("im1")
                                    .resizable()
                                    .padding(.bottom, 30.0)
                                    .scaledToFit()
                                    .frame(width: 250, height: 250)
                            }
                            
                        }
                    }
                
                Spacer()
                    .toolbar {
                        NavigationLink(destination: Links()) {
                            Image("img2")
                                .resizable()
                                .padding(.top, 30.0)
                                .scaledToFit()
                                .frame(width: 400, height: 250)
                        }
                    }
                
            } /*Closes Zstack*/
            
            
        } /*Closes Navigation Stack*/
        
    } /*Closes Body*/
    
} /*Closes Struct*/


#Preview {
    ContentView()
}
