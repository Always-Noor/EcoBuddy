//
//  Item.swift
//  EcoBuddy
//
//  Created by Orvs on 7/16/25.
//

import Foundation
import SwiftData


struct InventoryItem: Identifiable {
    let id = UUID()
    let name: String
    let carbonFootprint: Int
}

