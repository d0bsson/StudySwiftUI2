////
////  Slider.swift
////  StudySwiftUI2
////
////  Created by Дэвид Бердников on 04.06.2021.
////
//
//import SwiftUI
//
//struct ColorSlider: View {
//    let color: Color
//
//    @State private var sliderValue = Double.random(in: 0...255)
//    @State private var userValue = ""
//
//    var body: some View {
//        HStack {
//            Text("\(lround(sliderValue))")
//                .foregroundColor(Color.white)
//                .frame(width: 45, height: 25, alignment: .center)
//            Slider(value: $sliderValue, in: 0...255, step: 1)
//                .accentColor(color)
//            TextField("0", text: $userValue)
//                .frame(width: 50, height: 50, alignment: .trailing)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//
//        }
//    }
//
//
//    struct Slider_Previews: PreviewProvider {
//        static var previews: some View {
//            ColorSlider(color: .red)
//        }
//    }
//}
