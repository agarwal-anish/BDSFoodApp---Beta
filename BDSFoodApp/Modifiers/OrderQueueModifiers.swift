//
//  OrderQueueModifiers.swift
//  BDSFoodApp
//
//  Created by Anish on 8/11/23.
//

import SwiftUI

// MARK: - OrderQueue Text

struct OrderQueueModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()
            .foregroundColor(.black)
            .padding(.bottom)
            .underline()
            .italic()
            .font(.system(size: 30))
            .frame(maxWidth: .infinity)
    }
}

struct OrderQueueTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .bold()

            .font(.system(size: 23))

            .foregroundColor(Color.black.opacity(10))

            .padding(10)

            .lineLimit(3)

            .truncationMode(.tail) // Truncate with an ellipsis if needed

            .frame(width: 450)

            .padding(.leading, -40)

            .padding(.top, -20)

    }
}
