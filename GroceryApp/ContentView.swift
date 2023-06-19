//
//  ContentView.swift
//  GroceryApp
//
//  Created by Dmitryi Velko on 19.06.2023.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    
    @State private var isPresented: Bool = false
    
    @ObservedResults(ShoppingList.self) var shoppingLists
    
    var body: some View {
        NavigationView {
            VStack {
                if shoppingLists.isEmpty {
                    Text("No shopping lists!")
                }
                
                List {
                    ForEach(shoppingLists, id: \.id) { shoppingList in
                        VStack(alignment: .leading) {
                            Text(shoppingList.title)
                            Text(shoppingList.address)
                                .opacity(0.4)
                        }
                    }.onDelete(perform: $shoppingLists.remove)
                }
                
                
                
                    .navigationTitle("Grecory App")
                    
            }
            .sheet(isPresented: $isPresented, content: {
                AddShoppingListScreen()
            })
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isPresented = true
                    } label: {
                        Image(systemName: "plus")
                    }

                }
        }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
