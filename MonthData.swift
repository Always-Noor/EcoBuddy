//
//  MonthData.swift
//  EcoBuddy
//
//  Created by Scholar on 7/15/25.
//

import Foundation


class MonthData {
    var title: String
    var total: Bool
    
    init(title: String, total: Int) {
          self.title = title
          self.total = total > 0
    }
}
