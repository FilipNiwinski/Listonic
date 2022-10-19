//
//  DetailsModel.swift
//  Listonic
//
//  Created by tmp on 19/10/2022.
//

struct DetailsModel : Codable, Identifiable {
    let id: Int?
    let stLevel: DustLevelModel?
    let so2Level: DustLevelModel?
    let no2Level: DustLevelModel?
    let pm10Level: DustLevelModel?
    let pm25Level: DustLevelModel?
    let o3Level: DustLevelModel?
    
    enum CodingKeys: String, CodingKey {
        case id
        case stLevel = "stIndexLevel"
        case so2Level = "so2IndexLevel"
        case no2Level = "no2IndexLevel"
        case pm10Level = "pm10IndexLevel"
        case pm25Level = "pm25IndexLevel"
        case o3Level = "o3IndexLevel"
    }
    
    init(id: Int? = nil,
         stLevel: DustLevelModel? = nil,
         so2Level: DustLevelModel? = nil,
         no2Level: DustLevelModel? = nil,
         pm10Level: DustLevelModel? = nil,
         pm25Level: DustLevelModel? = nil,
         o3Level: DustLevelModel? = nil) {
        self.id = id
        self.stLevel = stLevel
        self.so2Level = so2Level
        self.no2Level = no2Level
        self.pm10Level = pm10Level
        self.pm25Level = pm25Level
        self.o3Level = o3Level
    }
}

