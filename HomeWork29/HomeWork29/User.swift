//
//  User.swift
//  HomeWork29
//
//  Created by Stanislav Sakhipov on 9/23/24.
//

import Foundation

struct User: Decodable {
    var id: Int
    var name: String
    var username: String
//    var email: String
//    var address: String
//    var street: String
//    var suite: String
//    var city: String
//    var zipcode: String
//    var geo: String
//    var lat: String
//    var lng: String
//    var phone: String
//    var website: String
//    var company: String
//    var catchPhrase: String
//    var bs: String
}


//import Foundation
//
//// MARK: - HTTPSJsonplaceholderTypicodeCOMUser
//struct HTTPSJsonplaceholderTypicodeCOMUser: Codable {
//    let id: Int
//    let name, username, email: String
//    let address: Address
//    let phone, website: String
//    let company: Company
//}
//
//// MARK: - Address
//struct Address: Codable {
//    let street, suite, city, zipcode: String
//    let geo: Geo
//}
//
//// MARK: - Geo
//struct Geo: Codable {
//    let lat, lng: String
//}
//
//// MARK: - Company
//struct Company: Codable {
//    let name, catchPhrase, bs: String
//}
//
//typealias HTTPSJsonplaceholderTypicodeCOMUsers = [HTTPSJsonplaceholderTypicodeCOMUser]
