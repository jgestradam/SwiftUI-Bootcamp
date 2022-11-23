//
//  DarkModeBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/22/22.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This text is Primary")
                        .foregroundColor(.primary)
                    
                    Text("This text is Secondary")
                        .foregroundColor(.secondary)
                    
                    Text("This text is Black")
                        .foregroundColor(.black)
                    
                    Text("This text is Black")
                        .foregroundColor(.white)
                    
                    Text("This text is Red")
                        .foregroundColor(.red)
                    
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootcamp()
                .preferredColorScheme(.light)
            
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
        }
    }
}
