//
//  SwiftUIView.swift
//  StudySwiftUI2
//
//  Created by Дэвид Бердников on 06.06.2021.
//

import SwiftUI



struct UserView: View {
    let redValue = 0.0
    let greenValue = 0.0
    let blueValue = 0.0
    
    
    var body: some View {
        Text("")
        Color(.sRGB, red: redValue, green: greenValue, blue: blueValue, opacity: 1)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
