//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Tomoya Hiraiwa on 2024/08/16.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                //AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }.buttonStyle(.borderedProminent)
                .controlSize(.large)
                .buttonBorderShape(.capsule)
                .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView){
            SafariView(url: URL(string: framework.urlString) ?? URL(string: MockData.sampleFramework.urlString)!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework:  MockData.sampleFramework)
}
