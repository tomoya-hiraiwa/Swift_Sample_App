//
//  xDismissButton.swift
//  Apple-Frameworks
//
//  Created by Tomoya Hiraiwa on 2024/08/16.
//

import SwiftUI

struct xDismissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44,height: 44)
            }
        }
    }
}

#Preview {
    xDismissButton(isShowingDetailView: .constant(false))
}
