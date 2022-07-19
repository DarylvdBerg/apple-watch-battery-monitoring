//
//  DashboardViewModel.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 19/07/2022.
//

import Foundation
import WatchConnectivity
class DashboardViewModel: NSObject, ObservableObject {
    @Published var dashboard: Dashboard
    var session: WCSession?
    
    override init() {
        self.dashboard = Dashboard(watchBattery: 100, phoneBattery: 100)
        super.init()
        
        activateSession()
    }
    
    func getWatchBatteryLevel() -> Int {
        return dashboard.watchBattery
    }
    
    func updateWatchBatteryLevel(newValue: Int) {
        self.dashboard.watchBattery = newValue
    }
    
    func activateSession() {
        if(WCSession.isSupported()) {
            self.session = WCSession.default
            self.session?.delegate = self
            self.session?.activate()
        }
    }
    
    func intitView() {
        self.getWatchBatteryLevel()
    }
}

extension DashboardViewModel: WCSessionDelegate {
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?){
        print("Session actived and completed")
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession){
        
    }
    
    func sessionDidDeactivate(_ session: WCSession){
        
    }
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        DispatchQueue.main.async {
            self.updateWatchBatteryLevel(newValue: message["watchBattery"] as? Int ?? 0)
            print(self.dashboard.watchBattery)
        }
    }
}
