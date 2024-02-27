//
//  Recipes.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 23/02/2024.
//

import Foundation

struct Recipes {
    
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
    
    static var examples = [Recipes(name: "chicken sandwich", ingredients: [Ingredient](), isFavourite: false, rating: 3),
                    Recipes(name: "bull sandwich", ingredients: [Ingredient](), isFavourite: false, rating: 3),
                    Recipes(name: "protein powder sandwich", ingredients: [Ingredient](), isFavourite: true, rating: 3)]
    
    #endif
    
}
