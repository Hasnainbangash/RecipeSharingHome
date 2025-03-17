//
//  RecipeView.swift
//  RecipeSharingHome
//
//  Created by Muhammad Hasnain Bangash on 16/03/2025.
//

import SwiftUI

struct RecipeItemView: View {
    var body: some View {
        VStack(spacing: 15) {
            Image("Food1")
                .resizable()
                .scaledToFit()
                .frame(height: 167)
                .overlay(
                    Image(systemName: "trash")
                        .foregroundColor(Color.red)
                        .padding()
                    , alignment: .topTrailing
                )
                .overlay(
                    Text("10 Mint")
                        .foregroundColor(Color("ColorDarkGreen"))
                        .padding()
                    , alignment: .bottomLeading
                )
            
            HStack(alignment: .top) {
                Image("ProfileImage1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 44, height: 44, alignment: .center)
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Fluffy Pancakes")
                        .fontWeight(.semibold)
                    
                    Text("By Guy Hawkins")
                        .foregroundColor(Color.gray.opacity(0.8))
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: "star")
                        .foregroundColor(Color("ColorDarkGreen"))
                    
                    Text("4.5 (45)")
                        .foregroundColor(Color("ColorDarkGreen"))
                } //: HSTACK
                .padding(.vertical ,1)
                .padding(.horizontal ,4)
                .background(Color("ColorLightGreen"))
                .cornerRadius(8)
            } //: HSTACK
        } //: VSTACK
    }
}

#Preview {
    RecipeItemView()
        .padding()
}
