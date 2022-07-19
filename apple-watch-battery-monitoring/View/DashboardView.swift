//
//  Dashboard.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 19/07/2022.
//

import SwiftUI

struct DashboardView: View {
    @ObservedObject var viewModel: DashboardViewModel = DashboardViewModel()
    
    var body: some View {
        VStack {
            VStack {
            }
            VStack {
                Text("Watch battery level: \(viewModel.getWatchBatteryLevel())%")
            }
            Divider()
        }.onAppear(perform: viewModel.intitView)
    }
    
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .previewDevice("iPhone 13 pro")
    }
}
