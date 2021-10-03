//
//  KPSwiftUINavApp.swift
//  KPSwiftUINav
//
//  Created by Abdullah Al-Ashi on 30/9/21.
//

import SwiftUI

@main
struct KPSwiftUINavApp: App {
    @StateObject var stateManager = StateManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(stateManager)
        }
    }
}
