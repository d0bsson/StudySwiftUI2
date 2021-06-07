//
//  ContentView.swift
//  StudySwiftUI2
//
//  Created by Дэвид Бердников on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    @State private var redUserValue = ""
    @State private var greenUserValue = ""
    @State private var blueUserValue = ""
    
    @State private var showAlert = false
    
    var body: some View {
        ZStack{
            Color(.systemGray2)
                .ignoresSafeArea()
            VStack{
                UserView(redValue: redSliderValue,
                         greenValue: greenSliderValue,
                         blueValue: blueSliderValue)
                ColorSlider(value: $redSliderValue,
                            userValue: $redUserValue,
                            color: .red)
                ColorSlider(value: $greenSliderValue,
                            userValue: $greenUserValue,
                            color: .green)
                ColorSlider(value: $blueSliderValue,
                            userValue: $blueUserValue,
                            color: .blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    @Binding var userValue: String
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(Color.white)
                .frame(width: 45, height: 25, alignment: .center)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            UserText(value: $userValue)
        }
    }
}

struct UserText: View {
    @Binding var value: String
    
    var body: some View {
        TextField("0", text: $value)
            .padding(.trailing, 8.0)
            .frame(width: 50, height: 50, alignment: .trailing)
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    
    private func checkUserValue() {
        if let _ = Double(value) {
            value = ""
        }
    }
}
