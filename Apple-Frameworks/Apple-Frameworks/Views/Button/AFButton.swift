//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Tomoya Hiraiwa on 2024/08/16.
//

import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280,height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
