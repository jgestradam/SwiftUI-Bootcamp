//
//  ImageBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/2/22.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("google")
            .renderingMode(.template)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            //.scaledToFit()
            .scaledToFill()
            .frame(width: 300,  height: 200)
            .foregroundColor(.green)
            //.clipped()
            //.cornerRadius(150)
            //.clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 25.0)
            //    Ellipse()
            //)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
