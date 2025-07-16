//
//  ContentView.swift
//  EcoBuddy
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
@State private var showNewTask = false
@Query var toDos: [MonthData]
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Color(red: 0.748, green: 0.854, blue: 0.857)
                    .ignoresSafeArea()
                Spacer()
                NavigationLink(destination: TripEditor()) {
                    Text("356")
                        .font(.custom(
                            "Earth And Sky", size: 140))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.535, green: 0.59, blue: 0.376))
                        .multilineTextAlignment(.center)
                        .padding(.all)
                        .padding(.bottom, 50.0)
                }
                Spacer()
                
                NavigationLink(destination: EcoSpark()) {
                    Image("im1")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.top, 600.0)
                        .padding(.horizontal, 20.0)
                    
                    /*Text("EcoSpark")
                        .font(.system(size: 45))
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.679, green: 0.78, blue: 0.437))
                        .multilineTextAlignment(.center)
                        .padding(.top, 650.0)*/
                }
                
                /*HStack {
                    Text("Monthly Footprint")
                        .font(.system(size: 25))
                        .fontWeight(.black)
                    Spacer()
                    
                    Button {
                        showNewTask = true
                    } label: {
                        Text("+")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                } /*Closes Hstack*/
                .padding()
                Spacer()*/
                
            } /*Closes Vstack*/
            
            
        } /*Closes Navigation Stack*/
        
    } /*Closes Body*/
    
} /*Closes Struct*/


#Preview {
    ContentView()
        .modelContainer(for: MonthData.self, inMemory: true)
}
