//
//  Expense.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 11/05/2026.
//

import Foundation

struct Expense {
    let title:String
    let amount:Double
    let date:Date

    static func getTest() -> Expense {
        return Expense(title: "Test", amount: 100, date: Date())
    }
}
