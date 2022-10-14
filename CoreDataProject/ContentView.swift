//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Carlos Vinicius on 13/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var user = [User]()
    
    var body: some View {
        NavigationView {
            List(user) { user in
                NavigationLink {
                    UserDetailedView(user: user)
                } label: {
                    HStack {
                        Circle()
                            .fill(user.isActive ? .green : .red)
                            .frame(width: 30)
                        
                        Text(user.name)
                    }
                }
            }
            .navigationTitle("Friendface")
            .task {
                await loadData()
            }
        }
    }
    func loadData() async {
        guard user.isEmpty else { return }
        
        do {
            let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json")!
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            user = try decoder.decode([User].self, from: data)
        } catch {
            print("Donwload failed!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
