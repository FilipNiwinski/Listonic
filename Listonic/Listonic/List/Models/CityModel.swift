//
//  CityModel.swift
//  Listonic
//
//  Created by tmp on 19/10/2022.
//

import Foundation

struct CityModel: Codable {
    let id: Int?
    let name: String?
    let commune: CommuneModel?
}
