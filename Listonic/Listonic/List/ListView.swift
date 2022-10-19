//
//  ContentView.swift
//  Listonic
//
//  Created by tmp on 19/10/2022.
//

import SwiftUI

struct ListView: View {
    @State var search = ""

    var filteredCities: [ListModel] {
        if search.isEmpty {
            return viewModel.list
        } else {
            return viewModel.list.filter {
                $0.stationName?.localizedCaseInsensitiveContains(search) ?? false
            }
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                list
            }
            .navigationTitle("Lista Stacji")
        }
        .searchable(text: $search,
                    prompt: "Wyszukaj stacje")
    }

    @ObservedObject private var viewModel: ListViewModel

    init(viewModel: ListViewModel) {
        self.viewModel = viewModel
    }

    private var list: some View {
        LazyVStack(spacing: 0) {
            ScrollView {
                ForEach(filteredCities) { station in
                    NavigationLink(destination: DetailsView(viewModel: DetailsViewModel(station: station))) {
                        Text(station.stationName ?? "")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ListViewModel()
        ListView(viewModel: viewModel)
    }
}
