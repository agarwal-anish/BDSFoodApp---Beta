//
//  Modifiers.swift
//  BDSFoodApp
//
//  Created by Anish on 7/11/23.
//

import SwiftUI

// MARK: - Image Modifier

struct ImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 300)
            .frame(height: 200)
            .border(Color.black, width: 1)
    }
}

// MARK: - Title Modifier

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .foregroundColor(.black)
            .padding()
            .frame(width: 300)
            .background(Color.gray)
            .border(Color.black, width: 1)
    }
}
