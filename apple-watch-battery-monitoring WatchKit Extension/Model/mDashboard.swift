//
//  mDashboard.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 19/07/2022.
//

import Foundation

struct mDashboard {
    var phoneBattery: Int
    var watchBattery: Int
    
    init(phoneBattery: Int, watchBattery: Int) {
        self.phoneBattery = phoneBattery
        self.watchBattery = watchBattery
    }
}
