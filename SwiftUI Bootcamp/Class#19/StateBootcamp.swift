//
//  StateBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/17/22.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var background: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    @State var foreground: Color = Color.white
    
    var body: some View {
        ZStack {
            //background
            background
                .edgesIgnoringSafeArea(.all)
            
            //content
            VStack(spacing: 20) {
                Text(myTitle)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1") {
                        background = .white
                        myTitle = "Button 1 was pressed"
                        count += 1
                        foreground = .blue
                    }
                    
                    Button("Button 2") {
                        background = .black
                        myTitle = "Button 2 was pressed"
                        count -= 1
                        foreground = .white
                    }
                }
            }
            .foregroundColor(foreground)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
