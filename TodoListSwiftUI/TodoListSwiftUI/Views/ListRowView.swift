//
//  ListRowView.swift
//  TodoListSwiftUI
//
//  Created by DataArt Viktor Drykin on 14.06.2024.
//

import SwiftUI

struct ListRowView: View {

    let title: String

    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "this is the first title")
}
