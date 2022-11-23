//
//  DocumentationBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/23/22.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: Properties
    
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    
    @State var showAlert: Bool = false
    
    // MARK: Body
    
    // Joseph - Working copy - things to do:
    /*
      1) Fix title
      2) Fix alert
      3) Fix something else
    */
    
    var body: some View {
        NavigationStack { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Alert", action: {
                            showAlert.toggle()
                        })
                    }
                }
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert")
            })
            }
        } // END: NAV
    }
    /// This is the foreground layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    // MARK: Functions
    
    /// Gets a alert with a specified title
    ///
    /// This function creates and returns an alert immefiately. The alert will have a title based on the text parameter but it will NOT have a message
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    ///
    /// - Warning: There is no addicional mesage in this Alert
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    // MARK: Previews

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
