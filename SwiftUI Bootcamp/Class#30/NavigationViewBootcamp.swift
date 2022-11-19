//
//  NavigationViewBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/18/22.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello. world", destination: MyOtherScreen())
                Text("Hi")
                Text("Hi")
                Text("Hi")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing: NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "gear")
                    })
                .accentColor(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green screen")
                //.navigationBarHidden(true)
            
            VStack {
                Button("Back bottom") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click Here", destination: Text("3rd screen!"))
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
