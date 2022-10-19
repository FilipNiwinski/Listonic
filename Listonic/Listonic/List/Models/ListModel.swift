//
//  ListModel.swift
//  Listonic
//
//  Created by tmp on 19/10/2022.
//

import Foundation

struct ListModel : Codable, Identifiable {
    let id: Int?
    let stationName: String?
    let latitude: String?
    let longitude: String?
    let city: CityModel?
    let addressStreet: String?

    enum CodingKeys: String, CodingKey {
        case id, stationName, city, addressStreet
        case latitude = "gegrLat"
        case longitude = "gegrLon"
    }
}
