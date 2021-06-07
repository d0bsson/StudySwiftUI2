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
            
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(redValue: 255, greenValue: 255,
            blueValue: 255)
    }
}
