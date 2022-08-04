//
//  ContentView.swift
//  NEW
//
//  Created by Zenitus on 04/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    
    var body: some View {
        ZStack {
            BackGroundView(isNight: $isNight)
            
            VStack {
                CityTextView(cityName: "Chennai")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                
                HStack(spacing: 15) {
                    WeatherDayView(dayOfWeek: "Mon", imageName: "cloud.sun.fill", temperature: 37)
                    
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 37)
                    
                    WeatherDayView(dayOfWeek: "Wed", imageName: "cloud.sun.fill", temperature: 37)
                    
                    WeatherDayView(dayOfWeek: "Thus", imageName: "cloud.sun.fill", temperature: 37)
                    
                    WeatherDayView(dayOfWeek: "Fri", imageName: "cloud.sun.fill", temperature: 37)
                    
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                    
                } label: {
                    WeatherButton(title: "Chnage Day Time", textColor: .blue, bgColor: .white)
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
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16,weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,height: 40)
            
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 20,weight: .medium,design: .default))
        }
    }
}

struct BackGroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}





struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design: .default ))
            .foregroundColor(.white)
            .padding()
    }
}


struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
            
        }
        
        .padding(.bottom,40)
        
    }
}


