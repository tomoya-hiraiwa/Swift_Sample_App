//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Tomoya Hiraiwa on 2024/08/16.
//

import SwiftUI

struct FrameworkTitleView: View {
            let framework: Framework
            var body: some View {
                HStack {
                    Image(framework.imageName)
                        .resizable()
                        .frame(width: 70,height: 70)
                    Text(framework.name)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .scaledToFit()
                        .minimumScaleFactor(0.6)
                }
            }
        }


#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
