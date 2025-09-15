//
//  HomepageShellView.swift
//  SBLakersClone01
//
//  Created by Sherwood Daniels on 9/14/25.
//


import SwiftUI

enum HomepageSection: String, CaseIterable {
//    case featured = "Featured"
//    case latest = "Latest"
//    case video = "Video"
    case featured, latest, video
}

enum FooterSection: String, CaseIterable {
    case home, tickets, schedule, team, more
}

struct HomepageShellView: View {
    @State private var selectedHeader: HomepageSection = .featured
    @State private var selectedFooter: FooterSection = .home

    @ViewBuilder
    private func renderHeaderContent() -> some View {
        switch selectedHeader {
        case .featured:
            FeaturedContentView()
        case .latest:
            LatestContentView()
        case .video:
            VideoContentView()
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            // Banner
            HeaderView()

            // Header Menu
            Picker("", selection: $selectedHeader) {
                ForEach(HomepageSection.allCases, id: \.self) { section in
                    Text(section.rawValue.capitalized).tag(section)
                }
            }
            .pickerStyle(.segmented)
            .padding()
            .onChange(of: selectedHeader) {
                selectedFooter = .home
            }

            Divider()

            // Client Area
            Group {
                if selectedFooter != .home {
                    switch selectedFooter {
                    case .tickets:
                        TicketsTabView()
                    case .schedule:
                        ScheduleTabView()
                    case .team:
                        TeamTabView()
                    case .more:
                        MoreTabView()
                    case .home:
                        renderHeaderContent()
                    }
                } else {
                    renderHeaderContent()
                }
            }
            .frame(maxHeight: .infinity)

            Divider()

            // Footer Menu
            FooterMenuView(selectedFooter: $selectedFooter)
        }
    }
}

#Preview {
    HomepageShellView()
}
