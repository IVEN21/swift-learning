//
//  recipeModel.swift
//  test
//
//  Created by Iven Zhang on 6/7/22.
//

import Foundation


class RecipeModel:ObservableObject {
    @Published var recipes = [Recipe]()
    
    init(){
    
       recipes =  DataService.getLocalData()
        
    }
    
   
}
