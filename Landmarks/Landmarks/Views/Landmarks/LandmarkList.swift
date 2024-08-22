//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tomoya Hiraiwa on 2024/08/22.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFaviriteOnly = false
    
    var filterdLandmarks: [Landmark] {
        modelData.landmarks.filter{landmark in
            (!showFaviriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFaviriteOnly){
                    Text("Favorite Only")
                }
                ForEach(filterdLandmarks){landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filterdLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
