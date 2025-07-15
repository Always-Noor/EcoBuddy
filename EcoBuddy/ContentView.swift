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
                HStack {
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
                Spacer()
                
                
            } /*Closes Vstack*/
            
            if showNewTask {
                AddMonth()
            }
        } /*Closes Navigation Stack*/
        
    } /*Closes Body*/
    
} /*Closes Struct*/


#Preview {
    ContentView()
}
