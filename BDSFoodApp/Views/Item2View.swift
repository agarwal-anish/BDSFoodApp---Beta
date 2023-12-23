//
//  Item2View.swift
//  BDSFoodApp
//
//  Created by Anish on 8/11/23.
//

import SwiftUI

struct Item2View: View {
    // MARK: - PROPERTIES

    var item2: String

    // MARK: - BODY
    var body: some View {
        Text(item2)
            .bold()
            .font(.system(size: 26))
            .padding(.leading, -180)
            .foregroundColor(.black)
            .lineLimit(1)
            .multilineTextAlignment(.center)
            .padding(.top, 10)
    }
}
