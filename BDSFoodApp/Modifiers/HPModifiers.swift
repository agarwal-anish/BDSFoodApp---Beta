//
//  HPModifiers.swift
//  BDSFoodApp
//
//  Created by Anish on 8/11/23.
//

import SwiftUI

// MARK: - NavigationView Modifier

struct NavigationViewImage: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 170, height: 200)
            .border(.black, width: 1)
    }
}

// MARK: - Image Text

struct ImageTextView: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 25))
            .font(.footnote)
            .fontWeight(.black)
            .foregroundColor(.purple)
    }
}
