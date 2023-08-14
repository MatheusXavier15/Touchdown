//
//  Shop.swift
//  Touchdown
//
//  Created by Matheus Xavier on 01/08/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedPRoduct: Product? = nil
}
