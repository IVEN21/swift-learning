//
//  Details.swift
//  test
//
//  Created by Iven Zhang on 6/8/22.
//

import SwiftUI

struct Details: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        
        
        ScrollView{
            VStack(alignment: .leading){
                Image(recipe.image).resizable().scaledToFill()
                    .padding(.bottom,10)
                Text("Ingredients")
                    .font(.largeTitle)
                    .padding(.vertical,3)
//                ForEach(recipe.ingredients,id:\.self){
//                    r in Text("~ "+r.name)     .padding(.bottom,5)
//                }
            }
            VStack(alignment: .leading){
             
                Text("Direction")
                    .font(.largeTitle)
                    .padding(.vertical,3)
                ForEach(0..<recipe.directions.count,id:\.self){
                    index in Text(String(index) + ". " + recipe.directions[index])     .padding(.bottom,5)
                }
            }
       
           
        }.padding()
       
    }
}

struct Details_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        Details(recipe: model.recipes[0])
    }
}
