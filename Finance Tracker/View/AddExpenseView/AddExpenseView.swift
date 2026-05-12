//
//  AddExpenseView.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 12/05/2026.
//

import SwiftUI

struct AddExpenseView: View {
    @EnvironmentObject var router: Router
    @EnvironmentObject var viewModel: ViewModel

    @State var titleText: String = ""
    @State var amountDouble = ""
    @State var tagText = ""

    @State var showInvalidAmountAlert: Bool = false

    var body: some View {
        VStack {
            Text("Add New Expense")
            TextField("Title", text: $titleText)
                .textFieldStyle(.roundedBorder)
            TextField("Amount", text: $amountDouble)
                .textFieldStyle(.roundedBorder)
            TextField("Tags", text: $tagText)
                .textFieldStyle(.roundedBorder)
            Button("Add") {
                AddNewExpense()
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .alert(isPresented: $showInvalidAmountAlert) {
            Alert(
                title: Text("Invalid Amount"),
                message: Text("Please enter a valid cash amount"),
                dismissButton: .default(Text("Retry"))
            )
        }
    }
}

extension AddExpenseView {
    func AddNewExpense() {

        let tagsArray: [String] = tagText
            .split(separator: ",")
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .filter { !$0.isEmpty }

        guard let amount = Double(amountDouble) else {
            showInvalidAmountAlert.toggle()
            return
        }

        let newExpense = Expense(
            title: titleText,
            amount: amount,
            date: Date(),
            tag: tagsArray
        )

        viewModel.add(newExpense)
        router.pop()
    }
}

#Preview {
    AddExpenseView()
}
