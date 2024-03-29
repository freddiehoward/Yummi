//
//  RecipesView.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 27/02/2024.
//

import Foundation

import SwiftUI

struct RecipesView: View {
    
    //change this to json later
    @State var recipes: [Recipes]

    var body: some View{
        NavigationStack {
        VStack{
            List{
                ForEach(recipes, id: \.self.id) {recipe in
                    Text("\(recipe.getName())")
                    }
                }
            }
        }
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView(recipes: Recipes.examples)
    }
}
