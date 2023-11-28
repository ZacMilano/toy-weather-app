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
            LinearGradient(
                gradient: Gradient(colors: [.blue, Color("mint")]),
                startPoint: .topLeading,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                Text("Chicago, IL")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack(spacing: 8) {
                    Image(systemName: "cloud.snow.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("30°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                
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
