//
//  Extensions.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 11/05/2026.
//

import Foundation
import UIKit

extension Date {
    func getStandardDate() -> String {
        self.formatted(
            .dateTime
                .year()
                .month(.twoDigits)
                .day()
                .hour()
                .minute()
        )
    }
}
