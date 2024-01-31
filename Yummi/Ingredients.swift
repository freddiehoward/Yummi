//
//  Ingredients.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 23/01/2024.
//

import Foundation

struct Ingredient {
    
    private var name: String
    
    private var quantity: Int
    
    private var unit: String
    
    private var category: String
    
    private var expiryDate: Int
    
    
    init(name: String, quantity: Int, unit: String, category: String, expiryDate: Int) {
        self.name = name
        self.quantity = quantity
        self.unit = unit
        self.category = category
        self.expiryDate = expiryDate
    }
    
    
    func displayStats() -> String {
        
        return """
name: \(self.name)
quantity: \(self.quantity)
unit: \(self.unit)
category: \(self.category)
expiryDate: \(self.expiryDate)
"""
        
        
    }
    
}

struct Ingredients {
    
    private var ingredientsArray: [String] = [String]()
    
}
