//
//  DetailsView.swift
//  Listonic
//
//  Created by tmp on 19/10/2022.
//

import SwiftUI

struct DetailsView: View {

    var body: some View {
        NavigationView {
            List {
                addressData
                airQualityData
            }
            .navigationTitle("Details")
        }
    }
    
    @ObservedObject private var viewModel: DetailsViewModel

    init(viewModel: DetailsViewModel) {
        self.viewModel = viewModel
    }
    
    private var list: some View {
        VStack(alignment: .center) {
            ScrollView {
                
            }
        }
    }
        
    private var addressData: some View {
        VStack {
            HStack {
                Text("Nazwa stacji")
                Spacer()
                Text(viewModel.stationAddressDetails.stationName)
            }
            HStack {
                Text("Szerokosc geograficzna")
                Spacer()
                Text(viewModel.stationAddressDetails.longitude)
            }
            HStack {
                Text("Dlugosc geograficzna")
                Spacer()
                Text(viewModel.stationAddressDetails.latitude)
            }
        }
    }
    
    private var airQualityData: some View {
        VStack {
            HStack {
                Text("Ogolny stan powietrza")
                Spacer()
                Text(viewModel.list.stLevel?.levelName ?? "-")
            }
            HStack {
                Text("Siarczany")
                Spacer()
                Text(viewModel.list.so2Level?.levelName ?? "-")
            }
            HStack {
                Text("No2")
                Spacer()
                Text(viewModel.list.no2Level?.levelName ?? "-")
            }
            HStack {
                Text("PM10")
                Spacer()
                Text(viewModel.list.pm10Level?.levelName ?? "-")
            }
            HStack {
                Text("PM2.5")
                Spacer()
                Text(viewModel.list.pm25Level?.levelName ?? "-")
            }
            HStack {
                Text("O3")
                Spacer()
                Text(viewModel.list.o3Level?.levelName ?? "-")
            }
        }
    }
}
