//
//  Item.swift
//  MVVM basico
//
//  Created by Mac on 18/4/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
