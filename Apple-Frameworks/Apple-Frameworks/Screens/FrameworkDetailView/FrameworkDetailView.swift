//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Tomoya Hiraiwa on 2024/08/16.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
           xDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView){
            SafariView(url: URL(string: framework.urlString) ?? URL(string: MockData.sampleFramework.urlString)!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework:  MockData.sampleFramework,isShowingDetailView: .constant(false))
}
