//
//  DetailsViewModel.swift
//  Listonic
//
//  Created by tmp on 19/10/2022.
//

import Combine
import Foundation

class DetailsViewModel: ObservableObject {

    @Published var list = DetailsModel()
    let station: ListModel
    @Published var stationAddressDetails: DisplayStationData

    init(station: ListModel) {
        self.station = station
        self.stationAddressDetails = DisplayStationData(from: station)
        downloadData()
    }

    private func downloadData() {
        guard let id = station.id else {
            print("Brak danych")
            return
        }
        if let url = URL(string: "https://api.gios.gov.pl/pjp-api/rest/aqindex/getIndex/\(id)") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    let jsonDecoder = JSONDecoder()
                    do {
                        if let parsedData = try? jsonDecoder.decode(DetailsModel.self, from: data) {
                            DispatchQueue.main.async { [weak self] in
                                self?.list = parsedData
                            }
                        }
                    }
                }
            }.resume()
        }
    }
}
