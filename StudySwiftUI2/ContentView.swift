//
//  ContentView.swift
//  StudySwiftUI2
//
//  Created by Дэвид Бердников on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var redSliderValue = 255.0
//    @State private var greenSliderValue = 255.0
//    @State private var blueSliderValue = 255.0
    
    var body: some View {
        ZStack{
            Color(.systemGray2)
                .ignoresSafeArea()
            VStack{
                UserView(redValue: 0,
                         greenValue: 0,
                         blueValue: 0)
                ColorSlider(color: .red)
                ColorSlider(color: .green)
                ColorSlider(color: .blue)
            }
            .padding(.bottom, 250)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
