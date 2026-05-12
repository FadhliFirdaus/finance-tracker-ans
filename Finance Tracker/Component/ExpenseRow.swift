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
            VStack(alignment: .leading){
                Text(expense.title)
                    .font(.title)
                HStack {
                    Text(expense.tag.map() { $0.lowercased() }.joined(separator: ", "))   .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                .frame(maxWidth: S.width/3)

            }
            .frame(alignment: .leading)
            Spacer()
            VStack (alignment: .trailing){
                Spacer()
                Text(expense.amount, format: .currency(code: "MYR").precision(.fractionLength(2)))
                    .font(.title.bold())
                Text(expense.date.getStandardDate())
                    .font(.footnote)
            }
            .frame(alignment: .bottom)
        }
        .padding(12)
        .frame(width: S.width, height: 80, alignment: .leading)
        .border(.bar)
    }
}

#Preview {
    ExpenseRow(expense: .getTest())
}
