//
//  GradientsBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/2/22.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
//                LinearGradient(
//                    colors: [Color.red, Color.blue],
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
//                RadialGradient(
//                    colors: [Color.red, Color.blue],
//                    center: .leading,
//                    startRadius: 5,
//                    endRadius: 200)
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .topLeading,
                    angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
