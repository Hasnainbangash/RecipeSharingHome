//
//  RecipeView.swift
//  RecipeSharingHome
//
//  Created by Muhammad Hasnain Bangash on 16/03/2025.
//

import SwiftUI

struct RecipeItemView: View {
    
    let recipe: Recipe
    
    var body: some View {
        VStack(spacing: 15) {
            // FOOD IMAGE
            Image(recipe.recipeImage)
                .resizable()
                .scaledToFit()
                .frame(height: 167)
                .overlay(
                    Button(action: {
                        print("Delete button tapped")
                    }) {
                        Image(systemName: "trash")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16, height: 16)
                            .foregroundColor(.red)
                            .padding(8)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: 2)
                    }
                        .frame(width: 32, height: 32)
                        .offset(x: -10, y: 10)
                    , alignment: .topTrailing
                )
                .overlay(
                    Text("10 Mint")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color("ColorDarkGreen"))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .shadow(radius: 2)
                        .offset(x: 10, y: -10)
                    , alignment: .bottomLeading
                )
            
            // PROFILE
            
            HStack(alignment: .top) {
                Image(recipe.recipeOwnerImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 44, height: 44, alignment: .center)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text(recipe.recipeName)
                        .fontWeight(.semibold)
                    
                    Text("By \(recipe.recipeOwnerName)")
                        .foregroundColor(Color.gray.opacity(0.8))
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "star")
                        .foregroundColor(Color("ColorDarkGreen"))
                    
                    Text("4.5 (45)")
                        .foregroundColor(Color("ColorDarkGreen"))
                } //: HSTACK
                .padding(.vertical ,6)
                .padding(.horizontal ,8)
                .background(Color("ColorLightGreen"))
                .cornerRadius(12)
            } //: HSTACK
            
            HStack(alignment: .center) {
                Spacer()
                Image(systemName: "heart")
                    .font(.title3)
                Spacer()
                Image(systemName: "ellipsis.message")
                    .font(.title3)
                Spacer()
                Image(systemName: "bookmark")
                    .font(.title3)
                Spacer()
                Image(systemName: "square.and.arrow.up")
                    .font(.title3)
            } //: HSTACK
        } //: VSTACK
    }
}

#Preview {
    RecipeItemView(recipe: recipeData[0])
        .padding()
}
