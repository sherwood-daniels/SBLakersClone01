//
//  HomepageTemplateView.swift
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

struct DummyView: View {
    let label: String

    var body: some View {
        Text(label)
            .font(.largeTitle)
            .foregroundColor(.red)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
    }
}

struct HomepageTemplateView: View {
    @State private var selectedSection: HomepageSection = .featured

    var body: some View {
        VStack(spacing: 0) {
            // Banner
            HeaderView()

            // Header Menu
            Picker("Section", selection: $selectedSection) {
                ForEach(HomepageSection.allCases, id: \.self) { section in
                    Text(section.rawValue).tag(section)
                }
            }
            .pickerStyle(.segmented)
            .padding()

            Divider()

            // Client Area
            Group {
                switch selectedSection {
                case .featured:
                    FeaturedContentView()
                case .latest:
                    LatestContentView()
                case .video:
                    VideoContentView()
                }
            }
            .frame(maxHeight: .infinity)

            Divider()

            // Footer Menu
            FooterTabView()
        }
    }
}

#Preview {
    HomepageTemplateView()
}
