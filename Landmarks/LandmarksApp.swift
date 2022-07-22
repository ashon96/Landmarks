//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Andrew Shon on 7/19/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var model = ModelData()

    var body: some Scene {
        WindowGroup {
          ContentView()
                .environmentObject(model)
        }
    }
}
