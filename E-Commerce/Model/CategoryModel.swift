//
//  CategoryModel.swift
//  E-Commerce
//
//  Created by Christopher Hicks on 5/14/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
