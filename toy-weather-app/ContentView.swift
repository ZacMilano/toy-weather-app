//
//  ContentView.swift
//  toy-weather-app
//
//  Created by Zac Milano on 11/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundGradientView(topColor: .blue, bottomColor: Color("mint"))
            
            VStack {
                CityTextView(cityName: "Chicago, IL")
                
                MainWeatherStatusView(imageName: "cloud.snow.fill", temperature: 30)
                
                HStack(spacing: 20) {
                    WeatherDayView(day: "TUE", imageName: "sun.haze.fill", temperature: 31)
                    WeatherDayView(day: "WED", imageName: "cloud.rain.fill", temperature: 39)
                    WeatherDayView(day: "THU", imageName: "sun.haze.fill", temperature: 37)
                    WeatherDayView(day: "FRI", imageName: "sun.haze.fill", temperature: 21)
                    WeatherDayView(day: "SAT", imageName: "sun.haze.fill", temperature: 11)
                }
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
    
}

struct CityTextView: View {
    var cityName: String;
    
    var body: some View {
        Text("Chicago, IL")
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct BackgroundGradientView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [topColor, bottomColor]),
            startPoint: .topLeading,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }
}
