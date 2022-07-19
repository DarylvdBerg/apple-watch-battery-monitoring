//
//  Dashboard.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 19/07/2022.
//

import Foundation
struct Dashboard {
    var watchBattery: Int
    var phoneBattery: Int
    
    init(watchBattery: Int, phoneBattery: Int) {
        self.watchBattery = watchBattery
        self.phoneBattery = phoneBattery
    }
}
