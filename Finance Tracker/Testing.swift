//
//  Testing.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 13/05/2026.
//

import SwiftUI

extension ViewModel {
    func initializeTestData() {

        let titles = [
            "Groceries",
            "Transport",
            "Food",
            "Clothing",
            "Bills",
            "Entertainment",
            "Health",
            "Subscriptions",
            "Travel",
            "Education"
        ]

        let tagsPool = [
            "Essential",
            "Daily",
            "Work",
            "Personal",
            "Urgent",
            "Recurring",
            "One-time",
            "Family",
            "Online",
            "Offline"
        ]

        let expenses = (0..<30).map { _ in
            Expense(
                title: titles.randomElement()!,
                amount: Double.random(in: 0.00...10000.00),
                date: randomDate(),
                tag: Array(tagsPool.shuffled().prefix(Int.random(in: 1...3)))
            )
        }

        expensesList = expenses.shuffled()

    }

    private func randomDate() -> Date {
        let now = Date()
        let daysBack = Int.random(in: 0...30)
        return Calendar.current.date(byAdding: .day, value: -daysBack, to: now)!
    }
}


extension Expense {
    static func getTest() -> Expense {
        let tags = ["Food", "Grocery", "Daily", "Essential", "Home"]

        return Expense(
            title: "Test \(Int.random(in: 0..<100))",
            amount: 100,
            date: Date(),
            tag: tags
        )
    }
}
