//
//  ContentView.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var newName: String = ""
    
//    let ingredients = Ingredients.init(name: "flour", quantity: 350, unit: "grams", category: "pantry", expiryDate: 11032024)
    
    let ingredient = Ingredient(name: "flour", quantity: 3, unit: "ml", category: "pantry", expiryDate: 9)
    
    var body: some View {
        Form {
            VStack {
                Text("\(ingredient.displayStats())")
                
                TextField("Name", text: $newName)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
