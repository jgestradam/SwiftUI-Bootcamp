//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/16/22.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
    //            .background(Color.yellow)
    //            //.padding()
    //            .padding(.all, 50)
    //            .padding(.leading, 20)
    //            .background(Color.blue)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will aling the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0,
                    y: 10
                )
        )
        .padding(.horizontal, 10)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.red)
//            .padding(.leading, 20)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
