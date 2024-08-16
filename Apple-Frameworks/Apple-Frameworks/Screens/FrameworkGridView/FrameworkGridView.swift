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
        NavigationView{
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks){framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramwork  = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramwork!,isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        
    }
}

#Preview {
    FrameworkGridView()
}


