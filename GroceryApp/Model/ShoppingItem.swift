//
//  ShoppingItem.swift
//  GroceryApp
//
//  Created by Dmitryi Velko on 19.06.2023.
//

import Foundation
import RealmSwift

final class ShoppingItem: Object, Identifiable {
    
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title: String
    @Persisted var quantity: Int
    
    override class func primaryKey() -> String? {
        "id"
    }
}
