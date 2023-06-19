//
//  ShoppingList.swift
//  GroceryApp
//
//  Created by Dmitryi Velko on 19.06.2023.
//

import Foundation
import RealmSwift

final class ShoppingList: Object, Identifiable {
    
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title: String
    @Persisted var address: String
    
    @Persisted var items: List<ShoppingItem> = List<ShoppingItem>()
    
    override class func primaryKey() -> String? {
        "id"
    }
    
}
