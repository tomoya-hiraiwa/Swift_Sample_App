//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Tomoya Hiraiwa on 2024/08/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
               .environment(modelData)
        }
    }
}
