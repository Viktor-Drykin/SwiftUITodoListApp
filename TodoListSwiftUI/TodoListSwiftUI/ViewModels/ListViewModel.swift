//
//  ListViewModel.swift
//  TodoListSwiftUI
//
//  Created by Viktor Drykin on 15.06.2024.
//

import Foundation

class ListViewModel: ObservableObject {

    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }
    let itemsKey = "items_key"

    init() {
        getItems()
    }

    func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {
            return
        }
        self.items = savedItems
    }

    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }

    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }

    func addItem(title: String) {
        let newItem = ItemModel(title: title, completed: false)
        items.append(newItem)
    }

    func updateItem(_ item: ItemModel) {
        guard let index = items.firstIndex(where: { $0.id == item.id }) else { return }
        items[index] = item.updated()
    }

    func saveItems() {
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}
