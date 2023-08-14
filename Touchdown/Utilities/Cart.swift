//
//  Cart.swift
//  Touchdown
//
//  Created by Matheus Xavier on 12/08/23.
//

import Foundation

class Cart: ObservableObject {
    @Published var products: [Product] = []
}
