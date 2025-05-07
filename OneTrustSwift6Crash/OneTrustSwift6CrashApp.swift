//
//  OneTrustSwift6CrashApp.swift
//  OneTrustSwift6Crash
//
//  Created by Cathal Farrell on 07/05/2025.
//

import SwiftUI

@main
struct OneTrustSwift6CrashApp: App {
    
    // Connect the AppDelegate
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
