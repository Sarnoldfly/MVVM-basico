//
//  MVVM_basicoApp.swift
//  MVVM basico
//
//  Created by Mac on 18/4/24.
//

import SwiftUI
import SwiftData

@main
struct MVVM_basicoApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
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
            RegistroView()
        }
        .modelContainer(sharedModelContainer)
    }
}
