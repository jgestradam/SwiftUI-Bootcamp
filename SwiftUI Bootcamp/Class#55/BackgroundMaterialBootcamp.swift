//
//  BackgroundMaterialBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/25/22.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding( )
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        .background(
            Image("therock")
        )
    }
}

struct BackgroundMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialBootcamp()
    }
}
