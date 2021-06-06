//
//  ContentView.swift
//  StudySwiftUI2
//
//  Created by Дэвид Бердников on 04.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(){
            Color(.systemGray2)
                .ignoresSafeArea()
            VStack{
                UserView()                    .frame(width: 350, height: 145, alignment: .center)
                    .padding(.bottom, 50.0)
                ColorSlider(color: .red)
                ColorSlider(color: .green)
                ColorSlider(color: .blue)
            }
            .padding(.bottom, 300.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
