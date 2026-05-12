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
    private let store = ExpenseStore()
    @Published var expensesList: [Expense] = []

    init() {
//        initializeTestData()
        self.load()
    }
}

extension ViewModel{
    func load() {
        expensesList = store.load()
    }

    func add(_ expense: Expense) {
        expensesList.append(expense)
        store.save(expensesList)
    }

    func delete(at offsets: IndexSet) {
        expensesList.remove(atOffsets: offsets)
        store.save(expensesList)
    }
}
