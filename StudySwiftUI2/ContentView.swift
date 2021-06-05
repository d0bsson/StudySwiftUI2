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
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack{
                ColorSlider(color: .red)
                ColorSlider(color: .green)
                ColorSlider(color: .blue)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
