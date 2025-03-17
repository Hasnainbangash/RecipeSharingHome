//
//  CategoryView.swift
//  RecipeSharingHome
//
//  Created by Muhammad Hasnain Bangash on 16/03/2025.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 10) {
                CategoriesItemView(categoryText: "Breakfast", categoryColor: "ColorDarkGreen")
                CategoriesItemView(categoryText: "Lunch", categoryColor: "ColorLightGreen")
                CategoriesItemView(categoryText: "Drinks", categoryColor: "ColorLightGreen")
                CategoriesItemView(categoryText: "Appetizer", categoryColor: "ColorLightGreen")
            } //: HSTACK
        } //: SCROLL VIEW
    }
}

#Preview {
    CategoryView()
        .padding()
}
