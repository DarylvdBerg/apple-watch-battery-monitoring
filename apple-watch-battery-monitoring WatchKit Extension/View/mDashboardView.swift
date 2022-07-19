//
//  mDashboardView.swift
//  apple-watch-battery-monitoring WatchKit Extension
//
//  Created by Daryl van den Berg on 19/07/2022.
//

import SwiftUI

struct mDashboardView: View {
    var controller: mDashboardController = mDashboardController(dashboard: mDashboard(phoneBattery: 100, watchBattery: 100))
    
    var body: some View {
        VStack {
            Text("Watch battery level: \(controller.getWatchBattery()) %")
        }.onAppear(perform: controller.updateView)
    }
}

struct mDashboardView_Previews: PreviewProvider {
    static var previews: some View {
        mDashboardView()
    }
}
