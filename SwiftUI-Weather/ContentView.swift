//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Fahmi Afrizal on 13/03/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            
            VStack {
                CityTextView(cityName: "Surabaya, INA")
                
                MainWeatherView(imageName: "cloud.sun.fill", temp: 76)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "sun.dust.fill",
                                   temp: 24)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.sun.bolt.fill",
                                   temp: 56)

                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.fog.fill",
                                   temp: 32)

                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.drizzle.fill",
                                   temp: 40)

                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "sun.max.fill",
                                   temp: 64)
                }
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    MainButton(title: "Change Day Time",
                               textColor: .blue,
                               bgColor: .white)
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

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temp)°")
                .font(.system(size: 24, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 28, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(.top, 20)
    }
}

struct MainWeatherView: View {
    var imageName: String
    var temp: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            Text("\(temp)°")
                .font(.system(size: 60, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}
