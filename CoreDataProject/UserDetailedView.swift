//
//  UserDetailedView.swift
//  CoreDataProject
//
//  Created by Carlos Vinicius on 13/10/22.
//

import SwiftUI

struct UserDetailedView: View {
    let user: CachedUser
    
    var body: some View {
        List {
            Section {
                Text(user.wrappedAbout)
                    .padding(.vertical)
            } header: {
                Text("About")
            }
            
            Section {
                Text("Addredss: \(user.wrappedCompany)")
                Text("Company: \(user.wrappedCompany)")
            } header: {
                Text("Contact details")
            }
            
            Section {
                ForEach(user.friendsArray) { friend in
                    Text(friend.wrappedName)
                }
            } header: {
                Text("Friends")
            }
        }
        .listStyle(.grouped)
        .navigationTitle(user.wrappedName)
        .navigationBarTitleDisplayMode(.inline)
    }
}
/*
struct UserDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailedView(user: User.example!)
    }
}
*/
