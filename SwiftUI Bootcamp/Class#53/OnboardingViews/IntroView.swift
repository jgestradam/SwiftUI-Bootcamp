//
//  IntroView.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/25/22.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signer_in") var currentUserSignerIn: Bool = false
    
    var body: some View {
        ZStack {
            // background
            RadialGradient(
                gradient: Gradient(colors: [Color.purple, Color.black]),
                center: .topLeading,
                startRadius: 100,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            // if user is signer in
            // profile view
            // else 
            //onbarding view
            
            if currentUserSignerIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
