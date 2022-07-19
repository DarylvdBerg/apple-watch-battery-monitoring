//
//  DashboardController.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 19/07/2022.
//

import Foundation
import UIKit
import WatchConnectivity
class DashboardController: NSObject, ObservableObject {
    
    var dashboard: Dashboard = Dashboard(watchBattery: 100, phoneBattery: 100)
    var session: WCSession?
    
    override init() {
        UIDevice.current.isBatteryMonitoringEnabled = true
        super.init()
        activateSession()
        
    }
    
    func getPhoneBattery() -> Int {
        let phoneBatteryLevel = Int(UIDevice.current.batteryLevel * 100)
        self.dashboard.phoneBattery = phoneBatteryLevel
        return self.dashboard.phoneBattery
        
    }
    
    func getWatchBattery() -> Int {
        return self.dashboard.watchBattery
    }
    
    func updateView() {
        dashboard.phoneBattery = getPhoneBattery()
        dashboard.watchBattery = getWatchBattery()
    }
    
    func activateSession() {
        if(WCSession.isSupported()) {
            self.session = WCSession.default
            self.session?.delegate = self
            self.session?.activate()
        }
    }
    
}

extension DashboardController: WCSessionDelegate {
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?){
        print("Session actived and completed")
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession){
        
    }
    
    func sessionDidDeactivate(_ session: WCSession){
        
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
            self.dashboard.watchBattery = message["watchBattery"] as? Int ?? 0
            print(self.dashboard.watchBattery)
        }
    }
}
