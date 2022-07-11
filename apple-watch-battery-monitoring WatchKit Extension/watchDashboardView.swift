//
//  watchDashboardView.swift
//  apple-watch-battery-monitoring WatchKit Extension
//
//  Created by Daryl van den Berg on 11/07/2022.
//

import SwiftUI

struct watchDashboardView: View {
    var controller: WatchDashboardController = WatchDashboardController()
    
    var body: some View {
        Text("Battery Level: \(controller.getBatteryLevel())")
    }
}

struct watchDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        watchDashboardView()
    }
}
