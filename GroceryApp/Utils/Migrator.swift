//
//  Migrator.swift
//  GroceryApp
//
//  Created by Dmitryi Velko on 19.06.2023.
//

import Foundation
import RealmSwift

final class Migrator {
    
    init() {
        updateSchema()
    }
    
    func updateSchema() {
        let config = Realm.Configuration(schemaVersion: 1) { migration, oldSchemaVersion in
            if oldSchemaVersion < 1 {
                migration.enumerateObjects(ofType: ShoppingList.className()) { _, newObject in
                    newObject!["items"] = List<ShoppingItem>()
                }
            }
        }
        
        Realm.Configuration.defaultConfiguration = config
        let _ = try! Realm()
    }
    
}
