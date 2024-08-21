//
//  CircleImage.swift
//  Landmarks
//
//  Created by Tomoya Hiraiwa on 2024/08/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
       Image("turtlerock")
            .clipShape(.circle)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
