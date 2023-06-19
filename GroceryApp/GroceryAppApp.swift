//
//  GroceryAppApp.swift
//  GroceryApp
//
//  Created by Dmitryi Velko on 19.06.2023.
//

import SwiftUI

@main
struct GroceryAppApp: App {
    
    let migrator = Migrator()
    
    var body: some Scene {
        WindowGroup {
//            let _ = UserDefaults.standard.set(self, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
            let _ = print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.path)
            ContentView()
        }
    }
}
