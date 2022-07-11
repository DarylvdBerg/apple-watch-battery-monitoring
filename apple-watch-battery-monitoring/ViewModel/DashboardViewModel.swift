//
//  DashboardViewModel.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 11/07/2022.
//

import Foundation
class DashboardViewModel: ObservableObject, IDashboardViewModel {
    
    @Published var dashBoard: Dashboard
    
    private var _batteryHelper: BatteryHelper
    
    init() {
        self.dashBoard = Dashboard()
        _batteryHelper = BatteryHelper()
    }
    
    func updateWatchBatteryPercentage() {
        
    }
    
    func updatePhoneBatteryPercentage() {
        
    }
    
    func showWatchBatteryPercentage() -> String {
        return ""
    }
    
    func showPhoneBatterPercentage() -> String {
        return String(dashBoard.phoneBatteryPercentage)
    }
    
}
