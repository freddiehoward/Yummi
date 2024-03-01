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
    @State var viewShownRecipesView: Bool = true
    
    var body: some View{
        VStack{
            List{
                ForEach(recipes, id: \.self.id) {recipe in
                    Text("\(recipe.getName())")
                }
            }
            /*
             MAKE THIS IN VIEW MODEL
            Button(action: {$viewShownRecipesView.toggle()}, label: {
                Text("Button")
            })
             */
        }
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView(recipes: Recipes.examples)
    }
}
