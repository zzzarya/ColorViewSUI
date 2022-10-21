//
//  MainView.swift
//  ColorViewSUI
//
//  Created by Антон Заричный on 21.10.2022.
//

import SwiftUI

struct MainView: View {
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        Color(red: redValue / 255, green: greenValue / 255, blue: blueValue / 255)
            .frame(width: 355, height: 150)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.white, lineWidth: 4))
            .padding(.bottom, 50)
           // .foregroundColor(Color(red: redValue, green: greenValue, blue: blueValue))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(redValue: 153, greenValue: 10, blueValue: 15)
    }
}
