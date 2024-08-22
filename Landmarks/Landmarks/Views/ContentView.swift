//
//  ContentView.swift
//  Landmarks
//
//  Created by Tomoya Hiraiwa on 2024/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
