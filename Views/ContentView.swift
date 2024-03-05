//
//  ContentView.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    var contentViewViewModel = ContentViewViewModel.shared
    
    var body: some View {
        
        Button {
            contentViewViewModel.toggleButton()
        } label: {
            Text("\(contentViewViewModel.showingRecipesViewButtonOn ? "Show Recipes" : "Show Ingredients")")
        }
        
    }
}


#Preview {
    ContentView()
}
