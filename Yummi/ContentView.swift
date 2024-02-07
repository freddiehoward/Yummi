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
    
    @State var unit: Units = .kg
    
    @State var category: String = ""
    
    @State var expiryDate: String = ""
    
    @State var ingredientsArray = [Ingredient]()
    
    @State var filledCount = 0
    

    var isDisabled: Bool {
        
        return !(newName.count > 0 && quantity.count > 0 && category.count > 0 && expiryDate.count > 0)
        
    }
 
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
                    
                    TextField("Name", text: $newName)
                    
                    TextField("Quantity", text: $quantity)
                
                    Picker("Unit", selection: $unit) {
                        ForEach(Units.allCases, id:\.self) {
                            unit in Text(unit.rawValue)
                        }
                }
                    
                    TextField("Category", text: $category)
                    
                    TextField("Expiry Date", text: $expiryDate)
                    
                    
                    
                    Button(action: {
                        //create ingredient
                        
                        let newIngredient = Ingredient(name: newName, quantity: quantity, unit: unit.rawValue, category: category, expiryDate: expiryDate)
                        //append to ingredients array
                        
                        ingredientsArray.append(newIngredient)
                        
                        newName = String()
                        quantity = String()
                        unit = .kg
                        category = String()
                        expiryDate = String()
                        filledCount = 0
                        
                    }) {
                        Text("Add to Ingredients")
                            .foregroundStyle(.black)
                            .padding(.vertical, 10)
                            .padding(.horizontal,20)
                    }
                    .disabled(isDisabled)
                    .background(Color.green)
                    .clipShape(Capsule())
                    .padding(25)
                    
                }
                .padding(.vertical, 10)
            }
        }
    }
#Preview {
    ContentView()
}
