//
//  chatAppWithSwiftUIApp.swift
//  chatAppWithSwiftUI
//
//  Created by Igor S. Menezes on 12/02/23.
//

import SwiftUI
import Firebase

@main
struct chatAppWithSwiftUIApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
