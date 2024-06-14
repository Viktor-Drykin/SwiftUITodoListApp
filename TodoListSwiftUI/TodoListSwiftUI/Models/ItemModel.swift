//
//  ItemModel.swift
//  TodoListSwiftUI
//
//  Created by Viktor Drykin on 14.06.2024.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let completed: Bool
}
