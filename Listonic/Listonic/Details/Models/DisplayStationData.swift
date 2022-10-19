//
//  DisplayStationData.swift
//  Listonic
//
//  Created by tmp on 19/10/2022.
//

import Foundation

struct DisplayStationData {
    let stationName: String
    let latitude: String
    let longitude: String
    let communeName: String
    let districtName: String
    let provinceName: String
    let addressStreet: String
}

extension DisplayStationData {
    init(from model: ListModel) {
        self.init(stationName: model.stationName ?? "-",
                  latitude: model.latitude ?? "-",
                  longitude: model.longitude ?? "-",
                  communeName: model.city?.commune?.districtName ?? "-",
                  districtName: model.city?.commune?.districtName ?? "-",
                  provinceName: model.city?.commune?.provinceName ?? "-",
                  addressStreet: model.addressStreet ?? "-")
    }
}
