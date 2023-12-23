//
//  HomePageView.swift
//  BDSFoodApp
//
//  Created by Anish on 5/11/23.
//

import SwiftUI

struct HomePageView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        ZStack {
            ZStack {
                NavigationView {
                    ZStack {
                        Rectangle()
                            .frame(width: 250)
                            .foregroundColor(Color("ColorLightGray"))
                            .overlay(
                                VStack {

                                    Text("Stalls".uppercased())
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .padding()
                                            .underline()

                                    TextView(item: "Stalls")
                                        .padding(.bottom, 15)
                                        .foregroundColor(.red)

                                    TextView(item: "Chinese Noddles")
                                    TextView(item: "Economy Rice")
                                    TextView(item: "Japenese Stall")
                                    TextView(item: "Western Stall")
                                    TextView(item: "Malay Stall")
                                    TextView(item: "Pastry Stall")
                                    TextView(item: "Drinks Stall")

                                } // VSTACK
                                    .edgesIgnoringSafeArea(.horizontal)
                            ) // OVERLAY
                    } // ZSTACK
                } // NAVIGATION
            } // ZSTACK

            Header(title: "BDSFoodApp", subtitle: "HOME PAGE", image: "")
        } // ZTACK

    }
}

struct TextView: View {
    // MARK: - PROPERTIES

    var item: String

    // MARK: - BODY
    var body: some View {
        Text(item)
            .modifier(ImageTextView())
            .padding(.bottom, 10)
    }
}

// MARK: - Preview
#Preview {
    HomePageView()
}
