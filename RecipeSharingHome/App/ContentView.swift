//
//  ContentView.swift
//  RecipeSharingHome
//
//  Created by Muhammad Hasnain Bangash on 16/03/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // HEADER
            HeaderView()
            
            // SEARCH VIEW
            SearchView()
            
            // CATEGORIES
            CategoryView()
            
            // TOTAL RECIPES
            Text("10 Recipes")
                .font(.title2)
                .fontWeight(.semibold)
                .frame(height: 34)
            
            // RECIPES
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
