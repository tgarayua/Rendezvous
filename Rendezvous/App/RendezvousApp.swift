//
//  RendezvousApp.swift
//  Rendezvous
//
//  Created by Thomas Garayua on 1/20/24.
//

import SwiftUI
import Firebase

@main
struct RendezvousApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(viewModel)
        }
    }
}
