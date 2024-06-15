//
//  ItemModel.swift
//  TodoListSwiftUI
//
//  Created by Viktor Drykin on 14.06.2024.
//

import Foundation

// Immutable Struct

struct ItemModel: Identifiable {
    let id: String
    let title: String
    let completed: Bool

    init(id: String = UUID().uuidString, title: String, completed: Bool) {
        self.id = id
        self.title = title
        self.completed = completed
    }

    func updated() -> ItemModel {
        return ItemModel(id: id, title: title, completed: !completed)
    }
}

extension ItemModel: Codable { }
