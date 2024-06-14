//
//  ListRowView.swift
//  TodoListSwiftUI
//
//  Created by Viktor Drykin on 14.06.2024.
//

import SwiftUI

struct ListRowView: View {

    let item: ItemModel

    var body: some View {
        HStack {
            Image(systemName: item.completed ? "checkmark.circle" : "circle")
                .foregroundColor(item.completed ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview("Completed Row", traits: .sizeThatFitsLayout) {
    ListRowView(item: .init(title: "this is the first title", completed: true))
}

#Preview("Uncompleted Row", traits: .sizeThatFitsLayout) {
    ListRowView(item: .init(title: "this is the first title", completed: false))
}
