//
//  ContentView.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 11/05/2026.
//

import SwiftUI

struct MainContainer: View {
    
    @EnvironmentObject var viewModel: ViewModel
    @EnvironmentObject var router: Router

    var body: some View {
        ZStack {
            ExpenseListView(expenseList: $viewModel.expensesList)
        }
        .frame(width: S.width, height: S.height, alignment: .top)
        .ignoresSafeArea()
        .overlay(alignment: .bottomTrailing, content: {
            FloatingActionButton {
                router.push(route: .AddExpenseView)
            }
            .padding([.trailing, .bottom], S.width/10)
        })
    }

}

#Preview {
    MainContainer()
}
