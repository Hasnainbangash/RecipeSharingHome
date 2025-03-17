//
//  CategoryView.swift
//  RecipeSharingHome
//
//  Created by Muhammad Hasnain Bangash on 16/03/2025.
//

import SwiftUI

struct CategoryView: View {
    // MARK: - PROPERTIES
    @State private var selectedCategory: String = "Breakfast"
    
    let categories = [
        "Breakfast",
        "Lunch",
        "Drinks",
        "Appetizer"
    ]
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 10) {
                ForEach(categories, id: \.self) { category in
                    Button(action: {}) {
                        Text(category)
                            .fontWeight(.semibold)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(selectedCategory == category ? Color("ColorDarkGreen") : Color("ColorLightGreen"))
                            .foregroundColor(Color.white)
                            .cornerRadius(10)
                            .onTapGesture {
                                selectedCategory = category
                            }
                    } //: BUTTON
                } //: LOOP
            } //: HSTACK
        } //: SCROLL VIEW
    }
}

// MARK: - PREVIEW

#Preview {
    CategoryView()
        .padding()
}
