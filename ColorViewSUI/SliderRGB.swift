//
//  SliderRGB.swift
//  ColorViewSUI
//
//  Created by Антон Заричный on 21.10.2022.
//

import SwiftUI

struct SliderRGB: View {
    let sliderColor: Color
    @Binding var sliderValue: Double
    @State private var alertPresented = false
    
    @State private var numberFormatter: NumberFormatter = {
        var nf = NumberFormatter()
        nf.numberStyle = .decimal
        return nf
    }()
    
    var body: some View {
        HStack {
            Text(lround(sliderValue).formatted())
            
                .frame(width: 35)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(sliderColor)
            
            TextField(lround(sliderValue).formatted(),
                      value: $sliderValue,
                      formatter: numberFormatter,
                      onCommit: {
                checkTextField()
            })
            .frame(width: 45)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .keyboardType(.numberPad)
            
            .alert(isPresented: $alertPresented,
                   content: {
                Alert(title: Text("Wrong Format"),
                      message: Text("Please enter value from 0 to 255"),
                      dismissButton: .cancel(Text("ОК")))
            })
        }
    }
    
    private func checkTextField() {
        if sliderValue > 255 {
            alertPresented.toggle()
            sliderValue = 0
        }
    }
}

struct SliderRGB_Previews: PreviewProvider {
    static var previews: some View {
        SliderRGB(sliderColor: .red, sliderValue: .constant(135))
    }
}
