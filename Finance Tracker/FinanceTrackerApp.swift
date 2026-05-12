//
//  Finance_TrackerApp.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 11/05/2026.
//

import SwiftUI

@main
struct FinanceTrackerApp: App {

    @StateObject private var router = Router()
    @StateObject private var viewModel = ViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationContainer(content: {
                MainContainer()
            })
                .environmentObject(router)
                .environmentObject(viewModel)
        }
    }
}
