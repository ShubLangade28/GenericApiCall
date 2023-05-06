//
//  ProductModel.swift
//  GenericApiCall
//
//  Created by PHN Tech 2 on 06/05/23.
//https://dummyjson.com/products

import Foundation

struct ProductResponse: Decodable {
    let products : [Product]
    let total, skip, limit: Int
}

// MARK: - Product
struct Product : Decodable {
    let id: Int
    let title, description: String
    let price: Int
    let discountPercentage, rating: Double
    let stock: Int
    let brand, category: String
    let thumbnail: String
    let images: [String]
}
