//
//  Recipes.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 23/02/2024.
//

import Foundation

struct Recipe {
    
    private var name: String
    
    private var ingredients: [Ingredient]
    
    private var isFavourite: Bool
    
    private var rating: Int
    
    
    init(name: String, ingredients: [Ingredient], isFavourite: Bool, rating: Int) {
        self.name = name
        self.ingredients = ingredients
        self.isFavourite = isFavourite
        self.rating = rating
    }
    
    #if DEBUG
    
    static var examples = [Recipe(name: "chicken sandwich", ingredients: [Ingredient](), isFavourite: false, rating: 3),
                    Recipe(name: "bull sandwich", ingredients: [Ingredient](), isFavourite: false, rating: 3),
                    Recipe(name: "protein powder sandwich", ingredients: [Ingredient](), isFavourite: true, rating: 3)]
    
    #endif
    
}
