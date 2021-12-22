//
//  Magic_UpdaterApp.swift
//  Magic_Updater
//
//  Created by Andrea Esselman on 12/21/21.
//

import SwiftUI

@main
struct Magic_UpdaterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(magic: .constant(MagicHistory.sampleData[0]))
        }
    }
}
