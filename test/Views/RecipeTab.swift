//
//  TabView.swift
//  test
//
//  Created by Iven Zhang on 6/8/22.
//

import SwiftUI

struct RecipeTab: View {
    var body: some View {
        TabView {
            Text("Feature").tabItem{
                VStack{
                    Image(systemName: "star.fill")
                    Text("Feature")
                }}
            ContentView().tabItem{
                VStack{
                    Image(systemName: "list.bullet")
                    Text("Recipe")
                }}
            }
        
    }
}

struct RecipeTab_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTab()
    }
}
