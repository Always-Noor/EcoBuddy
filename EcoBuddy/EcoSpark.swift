//
//  EcoSpark.swift
//  EcoBuddy
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct EcoSpark: View {
    @State private var chosenMessage: String = ""

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

    @State private var timeRemaining: TimeInterval = 24 * 60 * 60
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
            Color(red: 0.7647, green: 0.8745, blue: 0.8784)
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Spacer()
                Spacer()
                Text("EcoSpark")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(Color(red: 0.18, green: 0.27, blue: 0.24))
                    .padding(.top)
                Text(chosenMessage)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.white.opacity(0.9))
                    .cornerRadius(12)
                    .padding(.horizontal, 24)
                    .shadow(radius: 5)
                
                Text("Next update in: \(formattedTime(timeRemaining))")
                    .font(.callout)
                    .foregroundColor(.black)

                Spacer()
                Spacer()
            }
          
            .padding(.top, 80)
            .padding(.bottom, 40)
        }
        .onAppear {
            loadChosenMessage()
            resetTimer()
        }
        .onReceive(timer) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                loadChosenMessage()
                resetTimer()
            }
        }
    }

    func resetTimer() {
        timeRemaining = 24 * 60 * 60
    }

    func formattedTime(_ interval: TimeInterval) -> String {
        let hrs = Int(interval) / 3600
        let mins = (Int(interval) % 3600) / 60
        let secs = Int(interval) % 60
        return String(format: "%02d:%02d:%02d", hrs, mins, secs)
    }
// found this format online. https://stackoverflow.com/questions/26794703/swift-integer-conversion-to-hours-minutes-seconds
    
    @MainActor
    func loadChosenMessage() {
        let today = date(Date())
        let savedDate = UserDefaults.standard.string(forKey: "chosenDate")
        let savedMessage = UserDefaults.standard.string(forKey: "chosenMessage")
        
        if savedDate == today, let savedMessage = savedMessage {
            chosenMessage = savedMessage
        } else {
            let isChallenge = Bool.random()
            let newMessage: String
            
            if isChallenge {
                let challenge = challenges.randomElement() ?? "Challenge yourself today!"
                newMessage = "🌱 Daily Challenge\n\(challenge)"
            } else {
                let fact = funFacts.randomElement() ?? "Here is a really interesting fun fact related to sustainability!"
                newMessage = "🌿 Daily Fun Fact\n\(fact)"
            }
            
            UserDefaults.standard.set(today, forKey: "chosenDate")
            UserDefaults.standard.set(newMessage, forKey: "chosenMessage")
            
            chosenMessage = newMessage
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
