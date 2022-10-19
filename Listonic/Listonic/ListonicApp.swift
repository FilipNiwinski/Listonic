//
//  ListonicApp.swift
//  Listonic
//
//  Created by tmp on 19/10/2022.
//

import SwiftUI

@main
struct ListonicApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = ListViewModel()
            ListView(viewModel: viewModel)
        }
    }
}
