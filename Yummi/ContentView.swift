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
    
    //    let ingredients = Ingredients.init(name: "flour", quantity: 350, unit: "grams", category: "pantry", expiryDate: 11032024)
    
    let ingredient = Ingredient(name: "flour", quantity: "3", unit: "ml", category: "pantry", expiryDate: "9")
    
    @State var ingredientsArray = [Ingredient]()
    
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
                
                Button(action: {if ingredientsArray.count > 0 {
                    
                    selectedIngredient += 1
                    
                }
                    
            }, label: {
                    Text("Switch Ingredient")
                })
                
            }
            .padding()
            
            Section {
                VStack {
                    Text("\(ingredient.displayStats())")
                    
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
                        
                    }) {
                        Text("Add to Ingredients")
                            .foregroundStyle(.black)
                            .padding(.vertical, 10)
                            .padding(.horizontal,20)
                    }
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
