//
//  DashboardModel.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 08/07/2022.
//

import Foundation
public class DashboardModel {
    var watchBatteryPercentage: Int {
        get {
            return self.watchBatteryPercentage;
        }
        set(newValue) {
            self.watchBatteryPercentage = newValue;
        }
    }
    
    var phoneBatteryPercentage: Int {
        get {
            return self.phoneBatteryPercentage;
        }
        set(newValue) {
            self.phoneBatteryPercentage = newValue;
        }
    }
    
    init() {
        self.watchBatteryPercentage = 100;
        self.phoneBatteryPercentage = 100;
    }
}
