//
//  ContentView.swift
//  RecipeSharingHome
//
//  Created by Muhammad Hasnain Bangash on 16/03/2025.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROEPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
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
                
                // RECIPES VIEW
                RecipeView()
                
            } //: VSTACK
            .padding()
        } //: SCROLL
    }
}

// MARK: - PREVIEW

#Preview {
    ContentView()
}
