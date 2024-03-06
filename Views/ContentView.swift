//
//  ContentView.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var contentViewViewModel = ContentViewViewModel.shared
    
    var body: some View {
        VStack {
            Button {
                contentViewViewModel.toggleButton()
            } label: {
                Text("\(contentViewViewModel.showingRecipesViewButtonOn ? "Show Ingredients" : "Show Recipes")")
                }
            .padding()
            if contentViewViewModel.showingRecipesViewButtonOn == true {
                RecipesView(recipes: Recipes.examples)
            }
            else {
                IngredientView()
            }
        }
    }
}


#Preview {
    ContentView()
}
