//
//  TextBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/1/22.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the SwiftUI Bootcamp. I am really enjoying this course and learning a lot")
            //.font(.body)
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
            //.font(.system(size: 24, weight: .semibold, design: .serif))
            //.baselineOffset(-50.0)
            //.kerning(1.0)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
