//
//  FloatingActionButton.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 12/05/2026.
//

import SwiftUI

struct FloatingActionButton:View {
    let onTap: () -> Void
    var body: some View {
        ZStack {
            Image(systemName: "plus")
                .foregroundColor(.white)
        }

        .frame(width: 50, height: 50, alignment: .center)

        .background(.cyan)
        .clipShape(Circle())
        .onTapGesture {
            onTap()
        }
    }
}

#Preview {
    FloatingActionButton(onTap: {

    })
}
