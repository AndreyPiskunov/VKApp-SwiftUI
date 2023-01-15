//
//  Date+Extension.swift
//  VK-SwiftUI
//
//  Created by Andrey Piskunov on 15.01.2023.
//

import Foundation

extension Date {
    func timeAgoDisplay() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter.localizedString(for: self, relativeTo: Date())
    }
}
