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
        Color(.sRGB, red: redValue, green: greenValue, blue: blueValue, opacity: 1)
            .frame(width: 375, height: 200, alignment: .center)
            .cornerRadius(30)
            .padding(.bottom, 50)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        UserView(redValue: 232, greenValue: 22,
            blueValue: 0)
    }
}
