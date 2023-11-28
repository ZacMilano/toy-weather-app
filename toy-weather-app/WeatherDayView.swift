//
//  WeatherDayView.swift
//  toy-weather-app
//
//  Created by Zac Milano on 11/27/23.
//

import SwiftUI

struct WeatherDayView: View {
    let day: String
    let imageName: String
    let temperature: Int
    
    var body: some View {
        VStack {
            Text(day)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium, design: .default))
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40)
            
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 28, weight: .medium, design: .default))
        }
    }
}

