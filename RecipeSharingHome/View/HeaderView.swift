//
//  Header View.swift
//  RecipeSharingHome
//
//  Created by Muhammad Hasnain Bangash on 16/03/2025.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROEPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        Text("Recipes")
            .font(.system(size: 28, weight: .semibold, design: .rounded))
            .frame(height: 34)
    }
}

// MARK: - PREVIEW

#Preview {
    HeaderView()
        .padding()
}
