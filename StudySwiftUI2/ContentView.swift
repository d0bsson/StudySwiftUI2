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
                .onChange(of: value) { isOnFocus in
                    userValue = "\(lround(isOnFocus))"
                }
                .onAppear {
                    userValue = "\(lround(value))"
                }
            UserText(textValue: $userValue, value: $value)
        }
    }
}

struct UserText: View {
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("0", text: $textValue, onCommit: checkUserValue)
            .padding(.trailing, 8.0)
            .frame(width: 75, height: 50, alignment: .trailing)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Неверные данные"),
                      message: Text("Введите число от 0 до 255"),
                      dismissButton: .cancel())
            }
    }
    
    private func checkUserValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        showAlert.toggle()
        value = 0
        textValue = "0"
    }
}

