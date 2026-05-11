//
//  ViewModel.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 11/05/2026.
//

import SwiftUI
import Combine

@MainActor
class ViewModel: ObservableObject {

    @Published var expensesList: [Expense] = []

}
