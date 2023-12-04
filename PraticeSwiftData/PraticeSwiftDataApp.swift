//
//  PraticeSwiftDataApp.swift
//  PraticeSwiftData
//
//  Created by 준우의 MacBook 16 on 12/5/23.
//

import SwiftData
import SwiftUI

@main
struct PraticeSwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: GroceryListItem.self)
    }
}
