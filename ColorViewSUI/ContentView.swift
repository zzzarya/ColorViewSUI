//
//  ContentView.swift
//  ColorViewSUI
//
//  Created by Антон Заричный on 21.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = 15
    @State private var greenValue: Double = 40
    @State private var blueValue: Double = 54
    
    var body: some View {
        ZStack {
            Color(.lightGray)
                .ignoresSafeArea()
            
            VStack {
                MainView(redValue: redValue, greenValue: greenValue, blueValue: blueValue)
                
                SliderRGB(sliderColor: .red, sliderValue: $redValue)
                SliderRGB(sliderColor: .green, sliderValue: $greenValue)
                SliderRGB(sliderColor: .blue, sliderValue: $blueValue)
                
                Spacer()
            }.padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
