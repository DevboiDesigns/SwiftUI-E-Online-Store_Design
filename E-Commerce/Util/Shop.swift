//
//  Shop.swift
//  E-Commerce
//
//  Created by Christopher Hicks on 5/14/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
