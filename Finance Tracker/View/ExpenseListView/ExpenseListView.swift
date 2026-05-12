//
//  ExpenseListView.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 11/05/2026.
//

import SwiftUI

struct ExpenseListView: View {

    @Binding var expenseList: [Expense]
    @State var search: String = ""

    var body: some View {
        VStack (spacing:0){
            Text("Expense List View")
                .padding([.top, .bottom], 12)
            TextField("Search", text: $search)
                .padding(16)
            if expenseList.isEmpty {
                Text("No expense recorded yet")
            } else {
                let filteredExpenses: [Expense] = {
                    guard !search.isEmpty else { return expenseList }

                    return expenseList.filter { expense in
                        let inTitle = expense.title.localizedCaseInsensitiveContains(search)

                        let inTags = expense.tag.contains {
                            $0.localizedCaseInsensitiveContains(search)
                        }

                        return inTitle || inTags
                    }
                }()

                if filteredExpenses.isEmpty {
                    Text("No data related to filter found")
                } else {
                    ScrollView {
                        VStack(spacing: 0) {
                            ForEach(filteredExpenses, id: \.self.id) { expense in
                                ExpenseRow(expense: expense)
                            }
                        }
                    }
                }
            }
            Spacer()
                .frame(height: 40)
        }
        .padding(.top, S.topPadding)
        .frame(width: S.width, height: S.height, alignment: .top)
        .ignoresSafeArea()
        .background(.white.opacity(0.12))
    }
}


#Preview {
    ExpenseListView(expenseList: .constant([]))
}

