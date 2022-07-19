//
//  mDashboardController.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 19/07/2022.
//

import Foundation
import WatchConnectivity
import WatchKit

class mDashboardController: NSObject {
    
    var dashboard: mDashboard
    var session: WCSession?
    
    init(dashboard: mDashboard) {
        WKInterfaceDevice.current().isBatteryMonitoringEnabled = true
        self.dashboard = dashboard
        super.init()
        activateSession()
    }
    
    func activateSession() {
        if(WCSession.isSupported()) {
            self.session = WCSession.default
            self.session?.delegate = self
            self.session?.activate()
        }
    }
    
    func getWatchBattery() -> Int {
        let watchBattery = Int(WKInterfaceDevice.current().batteryLevel * 100)
        self.dashboard.watchBattery = watchBattery
        return self.dashboard.watchBattery
    }
    
    func updateView() {
        self.dashboard.watchBattery = getWatchBattery()
    }
    
    func sendWatchBatteryInfoToIphone() {
        self.session?.sendMessage(["watchBattery": getWatchBattery()], replyHandler: nil)
    }
}

extension mDashboardController: WCSessionDelegate {
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?){
        sendWatchBatteryInfoToIphone()
    }
    
}

