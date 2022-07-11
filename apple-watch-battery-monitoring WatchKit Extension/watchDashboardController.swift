//
//  watchDashboardController.swift
//  apple-watch-battery-monitoring WatchKit Extension
//
//  Created by Daryl van den Berg on 11/07/2022.
//

import Foundation
import WatchKit

class WatchDashboardController {
    
    init() {
        enableBatteryMonitoring()
    }
    
    func enableBatteryMonitoring() {
        let isEnabled = WKInterfaceDevice.current().isBatteryMonitoringEnabled
        if(!isEnabled) {
            WKInterfaceDevice.current().isBatteryMonitoringEnabled = true
        }
    }
    
    func getBatteryLevel() -> String {
        let batteryLevel = (WKInterfaceDevice.current().batteryLevel * 100)
        return String(batteryLevel);
    }
}
