//
//  BadgesBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/26/22.
//

import SwiftUI

//List
//TabView

struct BadgesBootcamp: View {
    var body: some View {
        List {
            Text("Hello, world")
                .badge("New Items!")
            Text("Hello, world")
            Text("Hello, world")
            Text("Hello, world")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("new")
//
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
