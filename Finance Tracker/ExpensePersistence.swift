//
//  ExpenseJSON.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 13/05/2026.
//

import Foundation

final class ExpenseStore {

    private let fileName = "expenses.json"

    private var url: URL {
        FileManager.default
            .urls(for: .documentDirectory, in: .userDomainMask)
            .first!
            .appendingPathComponent(fileName)
    }

    func load() -> [Expense] {
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode([Expense].self, from: data)
        } catch {
            return []
        }
    }

    func save(_ items: [Expense]) {
        do {
            let data = try JSONEncoder().encode(items)
            try data.write(to: url, options: [.atomic])
        } catch {
            print("save failed:", error)
        }
    }
}
