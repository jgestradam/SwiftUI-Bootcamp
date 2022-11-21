//
//  AlertBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/19/22.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    //@State var alertTitle: String = ""
    //@State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
                    //alertTitle = "Error uploading video"
                    //alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
                   // alertTitle = "Successfully uploading video 🥳"
                   // alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                getAlert()
            })
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was a error"))
        case.success:
            return Alert(title: Text("This was a success!"), message: nil,
                dismissButton: .default(Text("Ok"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("Error"))
        }
            
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
//        return Alert(
//            title: Text("This is a alert"),
//            message: Text("Here we will describe a Error"),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = Color.red
//            }),
//            secondaryButton: .cancel()
            //Alert(title: Text("There was an error!"))
//       )
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
