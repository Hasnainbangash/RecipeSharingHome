//
//  RecipeView.swift
//  RecipeSharingHome
//
//  Created by Muhammad Hasnain Bangash on 16/03/2025.
//

import SwiftUI

struct RecipeView: View {
    // MARK: - PROEPRTIES
    let recipes: [Recipe] = recipeData
    
    var body: some View {
        ForEach(recipes) { recipe in
            RecipeItemView(recipe: recipe)
        }
    }
}

#Preview {
    RecipeView()
        .padding()
}
