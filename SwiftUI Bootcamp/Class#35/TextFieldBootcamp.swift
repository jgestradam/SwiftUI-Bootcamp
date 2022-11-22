//
//  TextFieldBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/21/22.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textfieltText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type something here...", text: $textfieltText)
                //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id:  \.self) { data in
                    Text(data)
                }
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func textIsAppropriate() -> Bool {
        // check text
        if textfieltText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textfieltText)
        textfieltText = ""
    }
    
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
