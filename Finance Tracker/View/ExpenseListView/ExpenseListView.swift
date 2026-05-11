//
//  ExpenseListView.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 11/05/2026.
//

import SwiftUI

struct ExpenseListView: View {

    init(viewModel: ViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    @StateObject private var viewModel: ViewModel

    var body: some View {
        VStack {
            Text("Expense List View")
        }
        .padding(.top, S.topPadding)
        .frame(width: S.width, height: S.height, alignment: .top)
        .ignoresSafeArea()
        .background(.red)
    }
}

#Preview {
    ExpenseListView(viewModel: ViewModel())
}

