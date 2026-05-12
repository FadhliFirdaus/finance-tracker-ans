//
//  Router.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 12/05/2026.
//

import SwiftUI
import Combine

class Router:ObservableObject {
    
    @Published var path = NavigationPath()

    func push(route:Route) {
        path.append(route)
    }

    func pop(){
        path.removeLast();
    }

    func popToRoot() {
        path = NavigationPath()
    }
}


enum Route {
    case ExpenseListView
    case AddExpenseView
    
}
