//
//  Ingredients.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 23/01/2024.
//

import Foundation

struct Ingredients {
    
    private var name: String
    
    private var quantity: Int
    
    private var unit: String
    
    private var category: String
    
    private var expiryDate: Int
    
    
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
