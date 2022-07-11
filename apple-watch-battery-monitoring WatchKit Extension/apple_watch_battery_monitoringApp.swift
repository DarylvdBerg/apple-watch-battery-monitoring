//
//  apple_watch_battery_monitoringApp.swift
//  apple-watch-battery-monitoring WatchKit Extension
//
//  Created by Daryl van den Berg on 11/07/2022.
//

import SwiftUI

@main
struct apple_watch_battery_monitoringApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
