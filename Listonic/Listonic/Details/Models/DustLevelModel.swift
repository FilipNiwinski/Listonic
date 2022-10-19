//
//  DustLevelModel.swift
//  Listonic
//
//  Created by tmp on 19/10/2022.
//

struct DustLevelModel : Codable, Identifiable {
    let id: Int?
    let levelName: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case levelName = "indexLevelName"
    }
    
    init(id: Int? = nil,
         levelName: String? = nil) {
        self.id = id
        self.levelName = levelName
    }

}
