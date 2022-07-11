//
//  DashboardView.swift
//  apple-watch-battery-monitoring
//
//  Created by Daryl van den Berg on 11/07/2022.
//

import SwiftUI

struct DashboardView: View {
    
    @StateObject private var viewModel = DashboardViewModel()
    @State var inputfieldValue: String = ""
    
    var body: some View {
        VStack() {
            Text("hello")
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro"))
    }
}
