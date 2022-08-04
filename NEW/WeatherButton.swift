//
//  WeatherButton.swift
//  NEW
//
//  Created by Zenitus on 04/08/22.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var bgColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280,height: 50)
            .background(bgColor)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .bold,design: .default))
            .cornerRadius(10)
        
    }
}

