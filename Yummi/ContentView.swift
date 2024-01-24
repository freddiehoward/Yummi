//
//  ContentView.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    
//    let ingredients = Ingredients.init(name: "flour", quantity: 350, unit: "grams", category: "pantry", expiryDate: 11032024)
    
    let ingredient = Ingredients(name: "flour", quantity: 3, unit: "ml", category: "pantry", expiryDate: 9)
    
    var body: some View {
        VStack {
            Text("\(ingredient.displayStats())")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
