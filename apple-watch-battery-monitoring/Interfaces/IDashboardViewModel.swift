//
//  IDashboardViewModel.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 11/07/2022.
//

import Foundation
protocol IDashboardViewModel {
    
    func updateWatchBatteryPercentage()
    func updatePhoneBatteryPercentage()
    func showWatchBatteryPercentage() -> String
    func showPhoneBatterPercentage() -> String
}
