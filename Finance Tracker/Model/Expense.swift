//
//  Expense.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 11/05/2026.
//

import Foundation

struct Expense: Identifiable, Codable {
    var id = UUID()
    var title:String
    var amount:Double
    var date:Date
    var tag:[String]

    init(title: String, amount: Double, date: Date, tag: [String] = []) {
        self.title = title
        self.amount = amount
        self.date = date
        self.tag = tag
    }
}
