//
//  Screen.swift
//  Finance Tracker
//
//  Created by Fadhli Firdaus on 12/05/2026.
//
import UIKit

struct S {
    static var width: CGFloat {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first?
            .screen.bounds.width ?? 0
    }

    static var height: CGFloat {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first?
            .screen.bounds.height ?? 0
    }

    static var topPadding: CGFloat {
        UIApplication.shared.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .first?
            .statusBarManager?.statusBarFrame.height ?? 0
    }

    static var aspectRatio: CGFloat {
        height == 0 ? 0 : width / height
    }
}
