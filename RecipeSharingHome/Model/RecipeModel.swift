//
//  RecipeModel.swift
//  RecipeSharingHome
//
//  Created by Elexoft on 17/03/2025.
//

import SwiftUI

struct Recipe: Identifiable {
    let id = UUID()
    let recipeImage: String
    let recipeName: String
    let recipeOwnerImage: String
    let recipeOwnerName: String
}
