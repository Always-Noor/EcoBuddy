//
//  EcoBuddyApp.swift
//  EcoBuddy
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI
import SwiftData

@main
struct EcoBuddyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: MonthData.self)
        }
    }
}
