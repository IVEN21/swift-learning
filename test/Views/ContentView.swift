//
//  ContentView.swift
//  test
//
//  Created by Iven Zhang on 6/4/22.
//

import SwiftUI



struct ContentView: View {
    
    var lol = ["wima","woca","niama"]
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
     
        
        NavigationView(){
            VStack {
                List(model.recipes){
                    r in
                    NavigationLink(destination: Details(recipe: r), label: {
                        HStack(spacing: 20.0){
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                                
                            Text(r.name)
                        }
                    }  )
                  
                }
              
            }.navigationTitle("ALL RECIPE")
        }
     
     
      
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 13 Pro")
                .previewInterfaceOrientation(.portraitUpsideDown)
 
           
        }
    }
}
