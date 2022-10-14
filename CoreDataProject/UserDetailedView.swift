//
//  UserDetailedView.swift
//  CoreDataProject
//
//  Created by Carlos Vinicius on 13/10/22.
//

import SwiftUI

struct UserDetailedView: View {
    let user: User
    
    var body: some View {
        List {
            Section {
                Text(user.about)
                    .padding(.vertical)
            } header: {
                Text("About")
            }
            
            Section {
                Text("Addredss: \(user.address)")
                Text("Company: \(user.company)")
            } header: {
                Text("Contact details")
            }
            
            Section {
                ForEach(user.friends) { friend in
                    Text(friend.name)
                }
            } header: {
                Text("Friends")
            }
        }
        .listStyle(.grouped)
        .navigationTitle(user.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct UserDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailedView(user: User.example)
    }
}
