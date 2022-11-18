//
//  TernaryBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/18/22.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            Text(isStartingState ? "Starting state!" : "Ending state")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 150,
                    height: isStartingState ? 400 : 50
                )
            
            Spacer()
        }
        
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
