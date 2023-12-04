//
//  GroceryListItem.swift
//  PraticeSwiftData
//
//  Created by 준우의 MacBook 16 on 12/5/23.
//

import Foundation
import SwiftData

@Model
class GroceryListItem {
    let title: String
    let subtitle: String
    let date: Date

    init(title: String, subtitle: String, date: Date) {
        self.title = title
        self.subtitle = subtitle
        self.date = date
    }
}
