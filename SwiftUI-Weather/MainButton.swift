//
//  MainButton.swift
//  SwiftUI-Weather
//
//  Created by Fahmi Afrizal on 14/03/21.
//
import SwiftUI

struct MainButton: View {
    var title: String
    var textColor: Color
    var bgColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 60)
            .background(bgColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
