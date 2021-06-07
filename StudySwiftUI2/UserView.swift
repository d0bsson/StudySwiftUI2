//
//  SwiftUIView.swift
//  StudySwiftUI2
//
//  Created by Дэвид Бердников on 06.06.2021.
//

import SwiftUI

struct UserView: View {
    let redValue: Double
    let greenValue: Double
    let blueValue: Double
    
    var body: some View {
        Color(red: redValue/255,
              green: greenValue/255,
              blue: blueValue/255,
              opacity: 1)
            .frame(width: 375, height: 200, alignment: .center)
            .cornerRadius(30)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.white, lineWidth: 3)
            )
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(redValue: 4,
                 greenValue: 4,
                 blueValue: 255)
    }
}
