//
//  ListViewModel.swift
//  Listonic
//
//  Created by tmp on 19/10/2022.
//

import Combine
import Foundation

class ListViewModel: ObservableObject {
    @Published var list = [ListModel]()

    init() {
        downloadData()
    }

    func downloadData() {
        if let url = URL(string: "https://api.gios.gov.pl/pjp-api/rest/station/findAll") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    let jsonDecoder = JSONDecoder()
                    do {
                        if let parsedData = try? jsonDecoder.decode([ListModel].self, from: data) {
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
