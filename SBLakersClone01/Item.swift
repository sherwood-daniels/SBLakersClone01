//
//  Item.swift
//  SBLakersClone01
//
//  Created by Sherwood Daniels on 9/13/25.
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
