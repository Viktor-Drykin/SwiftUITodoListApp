//
//  TodoListSwiftUIApp.swift
//  TodoListSwiftUI
//
//  Created by Viktor Drykin on 11.04.2024.
//

import SwiftUI

@main
struct TodoListSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack(root: {
                ListView()
            })
        }
    }
}
