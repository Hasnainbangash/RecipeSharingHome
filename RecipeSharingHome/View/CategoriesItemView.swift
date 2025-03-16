//
//  CategoriesView.swift
//  RecipeSharingHome
//
//  Created by Muhammad Hasnain Bangash on 16/03/2025.
//

import SwiftUI

struct CategoriesItemView: View {
    
    let categoryText: String
    let categoryColor: String
    
    var body: some View {
        Button(action: {}) {
            Text(categoryText)
                .fontWeight(.semibold)
                .padding(.horizontal, 25)
                .padding(.vertical, 15)
        }
        .accentColor(Color.white)
        .background(Color(categoryColor))
        .cornerRadius(10)
    }
}

#Preview {
    CategoriesItemView(categoryText: "Breakfast", categoryColor: "ColorDarkGreen")
}
