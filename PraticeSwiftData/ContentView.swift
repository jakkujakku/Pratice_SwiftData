//
//  ContentView.swift
//  PraticeSwiftData
//
//  Created by 준우의 MacBook 16 on 12/5/23.
//

import SwiftData
import SwiftUI

// Model: Data
// Container: Where things get saved
// Context: How you interact

struct ContentView: View {
    @Environment(\.modelContext) var context
    @State var newItemString = ""

    @Query var items: [GroceryListItem]

    var body: some View {
        NavigationView {
            VStack {
                TextField("Add item", text: $newItemString)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()

                Button("Save") {
                    guard !newItemString.isEmpty else {
                        return
                    }

                    let newItem = GroceryListItem(title: newItemString, subtitle: "Buy this ASAP!", date: Date())
                    context.insert(newItem)
                    newItemString = ""
                }

                List {
                    ForEach(items) { item in
                        Text(item.title)
                    }
                    .onDelete { indexSet in
                        indexSet.forEach { index in
                            context.delete(items[index])
                        }
                    }
                }
                .overlay {
                    if items.isEmpty {
                        Text("No Items")
                    }
                }
            }
            .navigationTitle("Grocery List")
        }
    }
}

#Preview {
    ContentView()
}
