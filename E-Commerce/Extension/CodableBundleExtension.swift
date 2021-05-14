//
//  CodableBundleExtension.swift
//  E-Commerce
//
//  Created by Christopher Hicks on 5/14/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // Locate the file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        // Create prop for Data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in bundle")
        }
        
        // Create a Decoder
        let decoder = JSONDecoder()
        
        // Create a prop for Decode Data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        // return ready to Use Data
        return decodedData
    }
}
