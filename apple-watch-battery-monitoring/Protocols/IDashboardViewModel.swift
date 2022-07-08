//
//  PDashboardViewModel.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 08/07/2022.
//

import Foundation
public protocol IDashboardViewModel {
    func updateWatchBatteryPercentage()
    func updatePhoneBatteryPercentage()
}
