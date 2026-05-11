//
//  ExpenseRow.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 11/05/2026.
//
import SwiftUI

struct ExpenseRow: View {

    let expense:Expense

    var body: some View {
        HStack{
            Text(expense.title)
            Text("\(expense.amount)")
            Text(expense.date.getStandardDate())
        }
    }
}

#Preview {
    ExpenseRow(expense: .getTest())
}
