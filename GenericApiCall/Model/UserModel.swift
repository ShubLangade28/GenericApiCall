//
//  UserModel.swift
//  GenericApiCall
//
//  Created by PHN Tech 2 on 06/05/23.
//https://dummyjson.com/users

import Foundation
struct User: Decodable {
    let users: [UserElement]
    let total, skip, limit: Int
}

// MARK: - UserElement
struct UserElement: Decodable {
    let id: Int
    let firstName, lastName, maidenName: String
    let age: Int
    let gender: Gender
    let email, phone, username, password: String
    let birthDate: String
    let image: String
    let bloodGroup: String
    let height: Int
    let weight: Double
    let eyeColor: EyeColor
    let hair: Hair
    let domain, ip: String
    let address: Address
    let macAddress, university: String
    let bank: Bank
    let company: Company
    let ein, ssn, userAgent: String
}

// MARK: - Address
struct Address: Decodable {
    let address: String
    let city: String?
    let coordinates: Coordinates
    let postalCode, state: String
}

// MARK: - Coordinates
struct Coordinates: Decodable {
    let lat, lng: Double
}

// MARK: - Bank
struct Bank: Decodable {
    let cardExpire, cardNumber, cardType, currency: String
    let iban: String
}

// MARK: - Company
struct Company: Decodable {
    let address: Address
    let department, name, title: String
}

enum EyeColor: String, Decodable {
    case amber = "Amber"
    case blue = "Blue"
    case brown = "Brown"
    case gray = "Gray"
    case green = "Green"
}

enum Gender: String, Decodable {
    case female = "female"
    case male = "male"
}

// MARK: - Hair
struct Hair: Decodable {
    let color: Color
    let type: TypeEnum
}

enum Color: String, Decodable {
    case auburn = "Auburn"
    case black = "Black"
    case blond = "Blond"
    case brown = "Brown"
    case chestnut = "Chestnut"
}

enum TypeEnum: String, Decodable {
    case curly = "Curly"
    case straight = "Straight"
    case strands = "Strands"
    case veryCurly = "Very curly"
    case wavy = "Wavy"
}
