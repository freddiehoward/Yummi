//
//  IngredientView.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 01/03/2024.
//

import SwiftUI

struct IngredientView: View {
    
    var ingredients = [String]()
    
    @State var newName: String = ""
    
    @State var quantity: String = ""
    
    @State var unit: Units = .kg
    
    @State var category: String = ""
    
    @State var expiryDate: Date = Date()
    
    @State var ingredientsArray = [Ingredient]()
    
    @State var filledCount = 0
    

    var isDisabled: Bool {
        
        return !(newName.count > 0 && quantity.count > 0 && category.count > 0)
        
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
                
                if ingredientsArray.count == 0 {
                    Text("No Ingredients Currently")
                }
                
                else {
                    ForEach(ingredientsArray, id: \.self.id) { ingredient in
                        Text(ingredient.displayStats())
                    }
                    
                }
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
                    
                DatePicker("Expiry Date", selection: $expiryDate, displayedComponents: [.date])
                    
                    
                    
                    Button(action: {
                        //create ingredient
                        
                        let newIngredient = Ingredient(name: newName, quantity: quantity, unit: unit.rawValue, category: category, expiryDate: expiryDate.formatted(.dateTime.day().month(.wide).year()))
                        //append to ingredients array
                        
                        ingredientsArray.append(newIngredient)
                        
                        newName = String()
                        quantity = String()
                        unit = .kg
                        category = String()
                        expiryDate = Date()
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
    IngredientView()
}
