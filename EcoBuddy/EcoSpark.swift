//
//  EcoSpark.swift
//  EcoBuddy
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct EcoSpark: View {
    @State private var dailyChallenge: String = ""

    let challenges = [
        "Pick up 10 pieces of litter today!",
        "Use only reusable bags and bottles today!",
        "Eat an entire plant-based meal!",
        "Walk or bike instead of using a car!",
        "Turn off the tap while not in use!",
        "Turn off the lights when not in use!",
        "Reuse packaging to create a cool craft!",
        "Avoid buying any new clothes today!",
        "Unplug chargers not in use!",
        "Upcycle an old cloth you don't wear!"
    ]

    let funFacts = [
        "A hot water faucet dripping one drop per second can waste 165 gallons of water per month.",
        "Recycling a single aluminum can saves enough energy to power a TV for over 3 hours.",
        "It takes more energy to make 1 kg of paper than 1 kg of steel.",
        "Extracting 1 kg of gold takes almost 500,000 liters of water.",
        "It takes about 2,700 liters of water to make one cotton t-shirt."
    ]

    var body: some View {
        VStack {
            Text("EcoSpark")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.439, green: 0.464, blue: 0.262))
                .lineLimit(nil)
                
                .padding()
            Text(dailyChallenge)
                .font(.title)
                .multilineTextAlignment(.center)
                .background(Color.green.opacity(0.4))
                .padding()

            
        }
        .padding()
        .onAppear {
            dailyMessage()
        }
    }

    @MainActor
    func dailyMessage() {
        let today = date(Date())
        let savedDate = UserDefaults.standard.string(forKey: "savedDate")
        let savedMessage = UserDefaults.standard.string(forKey: "savedMessage")

        if savedDate == today, let message = savedMessage {
            dailyChallenge = message
        } else {
            let isChallenge = Bool.random()
            let newMessage: String

            if isChallenge {
                let challenge = challenges.randomElement() ?? "Challenge yourself today!"
                newMessage = "Daily Challenge 🌱 \n\(challenge)"
            } else {
                let fact = funFacts.randomElement() ?? "Here is a really interesting fun fact related to sustainability!"
                newMessage = "🌿 Daily Fun Fact! \n\(fact)"
            }

            UserDefaults.standard.set(today, forKey: "savedDate")
            UserDefaults.standard.set(newMessage, forKey: "savedMessage")

            dailyChallenge = newMessage
        }
    }

    func date(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        return formatter.string(from: date)
    }
}

#Preview {
    EcoSpark()
}
