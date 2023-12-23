//
//  MainPage.swift
//  BDSFoodApp
//
//  Created by Anish Agarwal on 25/10/23.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        TabView {

            // MARK: - CONTENT
            HomePageView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }

            // MARK: - Account
            AccountPageView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Account")

                }

            // MARK: - WesternStall
            SideBar()
                .tabItem {
                    Image(systemName: "sidebar.left")
                    Text("WesternStall")
                }

            // MARK: - OrderQueue
            OrderQueueView()
                .tabItem {
                    Image(systemName: "fork.knife.circle")
                    Text("OrderQueue")
                }

            // MARK: - OrderConfirmation
            OrderConfirmationView()
                .tabItem {
                    Image(systemName: "paperplane")
                    Text("Confirmation")
                }

        } // TAB
    }
}

#Preview {
    MainPage()
}
