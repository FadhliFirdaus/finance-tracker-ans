//
//  NavigationContainer.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 12/05/2026.
//


import SwiftUI

struct NavigationContainer<Content: View>: View {

    @EnvironmentObject private var router:Router
    @EnvironmentObject private var viewModel: ViewModel

    let content: () -> Content

    var body: some View {
        NavigationStack(path: $router.path) {
            content()
                .navigationDestination(for: Route.self) { getRouteViews(route: $0) }
        }
    }
}

extension NavigationContainer {
    @ViewBuilder
    func getRouteViews(route: Route) -> some View {
        switch route {
            case .ExpenseListView:
                MainContainer()
            case .AddExpenseView:
                AddExpenseView()
        }
    }
}

#Preview {
    NavigationContainer() {
        MainContainer()
    }
}
