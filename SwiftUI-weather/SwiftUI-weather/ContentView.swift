//
//  ContentView.swift
//  SwiftUI-weather
//
//  Created by Tomoya Hiraiwa on 2024/08/16.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack{
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" :  "cloud.sun.fill", temperature: 76)
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeeK: "TUE", imagename: "cloud.sun.fill", tenperature: 74)
                    WeatherDayView(dayOfWeeK: "WED", imagename: "sun.max.fill", tenperature: 88)
                    WeatherDayView(dayOfWeeK: "THU", imagename: "wind.snow", tenperature: 55)
                    WeatherDayView(dayOfWeeK: "FRI", imagename: "sunset.fill", tenperature: 60)
                    WeatherDayView(dayOfWeeK: "SAT", imagename: "snow", tenperature: 25)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgruondColor: .white)
                }
                Spacer()
            }
        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeeK: String
    var imagename: String
    var tenperature: Int
    var body: some View {
        VStack {
            Text(dayOfWeeK)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundStyle(.white)
            Image(systemName: imagename)
                .symbolRenderingMode(.multicolor)
                .resizable()
                //.foregroundStyle(.pink)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            Text("\(tenperature)º")
                .font(.system(size: 28,weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    var isNight: Bool

    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName:imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            Text("\(temperature)º")
                .font(.system(size: 70,weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom,40)
    }
}


