//
//  Dashboard.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 11/07/2022.
//

import Foundation
struct Dashboard {
    var watchBatteryPercentage: Int
    var phoneBatteryPercentage: Int
    
    init() {
        self.watchBatteryPercentage = 100
        self.phoneBatteryPercentage = 100
    }
}
