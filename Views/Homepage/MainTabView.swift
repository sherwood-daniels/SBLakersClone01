//
//  MainTabView.swift
//  SBLakersClone01
//
//  Created by Sherwood Daniels on 9/14/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeTabView()
                .tabItem { Label("Home", systemImage: "house") }

            TicketsTabView()
                .tabItem { Label("Tickets", systemImage: "ticket") }

            ScheduleTabView()
                .tabItem { Label("Schedule", systemImage: "calendar") }

            TeamTabView()
                .tabItem { Label("Team", systemImage: "person.3") }

            MoreTabView()
                .tabItem { Label("More", systemImage: "ellipsis") }
        }
    }
}
