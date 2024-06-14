//
//  ListView.swift
//  TodoListSwiftUI
//
//  Created by Viktor Drykin on 14.06.2024.
//

import SwiftUI

struct ListView: View {

    @State var items: [ItemModel] = [
        .init(title: "This is the first title", completed: false),
        .init(title: "This is the second title", completed: true),
        .init(title: "This is the third title", completed: false)
    ]

    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }

        }
        .listStyle(.plain)
        .navigationTitle("Todo list")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
