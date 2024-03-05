//
//  ContentViewViewModel.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 05/03/2024.
//

import Foundation

class ContentViewViewModel: ObservableObject {
    
    static let shared = ContentViewViewModel()
    
//    func toggleButton(inputtedBool: Bool) -> Bool {
//        let toggledBool = !inputtedBool
//        return toggledBool
//    }
    
    func toggleButton() {
        self.showingRecipesViewButtonOn.toggle()
    }
    
    @Published var showingRecipesViewButtonOn: Bool = true
    
}
