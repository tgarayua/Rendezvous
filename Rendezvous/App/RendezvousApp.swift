//
//  RendezvousApp.swift
//  Rendezvous
//
//  Created by Thomas Garayua on 1/20/24.
//

import SwiftUI

@main
struct RendezvousApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(viewModel)
        }
    }
}
