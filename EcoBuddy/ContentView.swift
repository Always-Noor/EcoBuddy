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
            
            VStack {
                Spacer()
                NavigationLink(destination: TripOverview()) {
                    Text("356")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.582, green: 0.637, blue: 0.41))
                        .multilineTextAlignment(.center)
                        .padding(.all)
                }
                Spacer()
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
