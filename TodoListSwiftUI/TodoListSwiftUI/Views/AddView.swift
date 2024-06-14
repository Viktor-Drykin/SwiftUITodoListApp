//
//  AddView.swift
//  TodoListSwiftUI
//
//  Created by Viktor Drykin on 14.06.2024.
//

import SwiftUI

struct AddView: View {

    @State var textFieldText = ""

    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.pink.opacity(0.2))
                    .cornerRadius(10)

                Button(action: {

                }, label: {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item:")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
