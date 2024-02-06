//
//  ContentView.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 23/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    var ingredients = [String]()
    
    @State var newName: String = ""
    
    @State var quantity: String = ""
    
    @State var unit: String = ""
    
    @State var category: String = ""
    
    @State var expiryDate: String = ""
    
    @State var ingredientsArray = [Ingredient]()
    
    //@State var filledCount = 0
    
/*
var isAddIngredientButtonShowing: Bool {
        
        if newName.count > 0 {
            filledCount += 1
        
        
        if quantity.count > 0 {
            filledCount += 1
        }
        
        if unit.count > 0 {
            filledCount += 1
        }
        
        if category.count > 0 {
            filledCount += 1
        }
        
        if expiryDate.count > 0 {
            filledCount += 1
        }
        
        if filledCount == 5 {
            //disabled = false
            return false
        }
        
        else {
            return true
        }
    }
*/
    var isSwitchIngredientButtonShowing: Bool {
        
        if ingredientsArray.count > 1 {
            //disabled = false ie showing
            return false
        }
        
        else{
            return true
        }
        
    }
    
    @State var selectedIngredient:Int = 0 {
        
        didSet{
            
            if selectedIngredient > ingredientsArray.count-1 {
                
                selectedIngredient = 0
                
            }
            
        }
        
    }
    
    var body: some View {
        
        Form{
            Section{
                
                if ingredientsArray.count > 0{
                    Text(ingredientsArray[selectedIngredient].displayStats())
                }
                
                else{
                    Text("No ingredients in list")
                }
                
                Button(action: {if ingredientsArray.count > 0 {
                    
                    selectedIngredient += 1
                    
                }
                    
            }, label: {
                    Text("Switch Ingredient")
                })
                .disabled(isSwitchIngredientButtonShowing)
                
            }
            .padding()
            
            Section {
                VStack {
                    
                    TextField("Name", text: $newName)
                    
                    TextField("Quantity", text: $quantity)
                    
                    TextField("Unit", text: $unit)
                    
                    TextField("Category", text: $category)
                    
                    TextField("Expiry Date", text: $expiryDate)
                    
                    
                    
                    Button(action: {
                        //create ingredient
                        
                        let newIngredient = Ingredient(name: newName, quantity: quantity, unit: unit, category: category, expiryDate: expiryDate)
                        //append to ingredients array
                        
                        ingredientsArray.append(newIngredient)
                        
                        newName = String()
                        quantity = String()
                        unit = String()
                        category = String()
                        expiryDate = String()
                        //filledCount = 0
                        
                    }) {
                        Text("Add to Ingredients")
                            .foregroundStyle(.black)
                            .padding(.vertical, 10)
                            .padding(.horizontal,20)
                    }
                    //.disabled(isAddIngredientButtonShowing)
                    .background(Color.green)
                    .clipShape(Capsule())
                    .padding(25)
                    
                }
                .padding(.vertical, 10)
            }
        }
    }
}
#Preview {
    ContentView()
}
