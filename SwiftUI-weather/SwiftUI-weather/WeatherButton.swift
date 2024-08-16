//
//  WeatherButton.swift
//  SwiftUI-weather
//
//  Created by Tomoya Hiraiwa on 2024/08/16.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgruondColor: Color
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgruondColor)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
