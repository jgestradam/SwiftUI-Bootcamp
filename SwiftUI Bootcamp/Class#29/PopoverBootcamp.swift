//
//  PopoverBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/18/22.
//

// sheets
// animations
// transitions

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var shownewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button") {
                    shownewScreen.toggle()
                }
                .font(.largeTitle)
                
                Spacer()
            }
            //method 1= sheet
//            .sheet(isPresented: $shownewScreen, content: {
//                NewScreen()
//            })
            
            //method 2 - transitions
//            ZStack {
//                if shownewScreen {
//                    NewScreen(showNewScreen: $shownewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
            
            //method 3 - animation offset
            NewScreen(showNewScreen: $shownewScreen)
                .padding(.top, 100)
                .offset(y: shownewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                //presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
        //NewScreen()
    }
}
