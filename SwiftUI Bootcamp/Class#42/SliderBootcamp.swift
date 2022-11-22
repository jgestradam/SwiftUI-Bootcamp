//
//  SliderBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/22/22.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating: ")
            Text(
                String(format: "%.1f", sliderValue)
                //"\(sliderValue)"
            )
            .foregroundColor(color)
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .foregroundColor(Color.red)
                ,
                maximumValueLabel:
                    Text("5")
                    .foregroundColor(Color.red)
                ,
                label: {Text("Title")}
            )
                .tint(Color.red)
        }
        .padding(.horizontal)
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
