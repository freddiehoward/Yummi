//
//  Ingredients.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 23/01/2024.
//

import Foundation

struct Ingredient {
    
    let id = UUID()
    
    private var name: String
    
    private var quantity: String
    
    private var unit: String
    
    private var category: String
    
    private var expiryDate: String
    
    
    init(name: String, quantity: String, unit: String, category: String, expiryDate: String) {
        self.name = name
        self.quantity = quantity
        self.unit = unit
        self.category = category
        self.expiryDate = expiryDate
    }
    
    
    func displayStats() -> String {
        
        return """
Name: \(self.name)
Quantity: \(self.quantity)
Unit: \(self.unit)
Category: \(self.category)
Expiry Date: \(self.expiryDate)
"""
        
        
    }
    
}

enum Units: String, CaseIterable{
    case lbs, kg, ml, bosh
    var id: Self{self}
}
