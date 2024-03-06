//
//  ContentViewViewModel.swift
//  Yummi
//
//  Created by Howard, Freddie (ABH) on 05/03/2024.
//

import Foundation

class ContentViewViewModel: ObservableObject {
    
    static let shared = ContentViewViewModel()
    
    @Published var showingRecipesViewButtonOn: Bool = true
    
    
    func toggleButton() {
        self.showingRecipesViewButtonOn.toggle()
    }
    
    
    
}
