//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Tomoya Hiraiwa on 2024/08/16.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FramworkGridViewModel()
    
    
    
    
    var body: some View {
        NavigationStack{
            List {
                ForEach(MockData.frameworks){framework in
                    NavigationLink(value: framework) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self){framework in
                FrameworkDetailView(framework: framework)
            }
        }
        .tint(Color(.label))
    }
    
    
}

#Preview {
    FrameworkGridView()
}


