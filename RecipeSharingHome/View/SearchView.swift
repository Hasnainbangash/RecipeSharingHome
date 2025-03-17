//
//  SearchView.swift
//  RecipeSharingHome
//
//  Created by Muhammad Hasnain Bangash on 16/03/2025.
//

import SwiftUI

struct SearchView: View {
    // MARK: - Properties
    
    @State private var searchText: String = ""
    
    // MARK: - BODY
    
    var body: some View {
        HStack(spacing: 20) {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                
                TextField("Search anything...", text: $searchText)
                    .foregroundColor(.black)
                
                Spacer()
            } //: HSTACK
            .padding(12)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray.opacity(0.2), lineWidth: 1)
            )
            
            Button(action: {}) {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold))
                    .frame(width: 44, height: 44)
                    .background(Color("ColorDarkGreen"))
                    .cornerRadius(10)
            } //: BUTTON
        } //: HSTACK
    }
}

// MARK: - PREVIEW

#Preview {
    SearchView()
        .padding()
}
