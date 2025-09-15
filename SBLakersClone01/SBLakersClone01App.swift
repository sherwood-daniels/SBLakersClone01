//
//  SBLakersClone01App.swift
//  SBLakersClone01
//
//  Created by Sherwood Daniels on 9/13/25.
//

import SwiftUI
import SwiftData

@main
struct SBLakersClone01App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            // Add your SwiftData models here when ready
            // Example: Player.self, Game.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            // MainTabView() // Launches your interactive tab layout
            HomepageShellView()  // Launches your interactive tab layout
        }
        .modelContainer(sharedModelContainer)
    }
}
