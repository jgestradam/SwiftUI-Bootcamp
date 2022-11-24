//
//  ModelBootcamp.swift
//  SwiftUI Bootcamp
//
//  Created by Joseph Estrada on 11/24/22.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
    
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
       // "Nick", "Emily", "Samantha", "Christ"
        UserModel(displayName: "Nick", userName: "Nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "itsemily123", followerCount: 55, isVerified: false),
        UserModel(displayName: "Samantha", userName: "ninja", followerCount: 355, isVerified: true),
        UserModel(displayName: "Chris", userName: "christ123", followerCount: 88, isVerified: false)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                            Text("@\(user.userName)")
                                .foregroundColor(Color.gray)
                                .font(.caption)

                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                            Text("Followers")
                                .foregroundColor(Color.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
