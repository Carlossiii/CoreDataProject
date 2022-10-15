//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Carlos Vinicius on 13/10/22.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
