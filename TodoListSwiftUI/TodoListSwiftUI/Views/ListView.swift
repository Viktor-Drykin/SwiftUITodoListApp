//
//  ListView.swift
//  TodoListSwiftUI
//
//  Created by Viktor Drykin on 14.06.2024.
//

import SwiftUI

struct ListView: View {

    @State var items: [String] = [
        "This is the first title",
        "This is the second title",
        "This is the third title"
    ]

    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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
