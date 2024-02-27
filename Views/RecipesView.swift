//
//  RecipesView.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 27/02/2024.
//

import Foundation

import SwiftUI

struct RecipesView: View {
    
 @State var recipes: [Recipes]
    
    var body: some View{
        
        VStack{
            /*
            ForEach(recipes, id: \.self) {name in
                Text("\(recipe.name)")
                }
             */
            }
        }
    }

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView(recipes: Recipes.examples)
    }
}
