//
//  ContentView.swift
//  Rendezvous
//
//  Created by Thomas Garayua on 1/20/24.
//

import SwiftUI

struct SplashScreenView: View {

    @Environment(\.colorScheme) var colorScheme
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            NavigationBarView()
        } else {
            VStack {
                VStack {
                    Image(systemName: "mappin.and.ellipse")
                        .font(.system(size: 80))
                        .foregroundColor(.orange)
                    Text("Rendezvous")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(colorScheme == .dark ? .white : .black)
                        .background(colorScheme == .dark ? .black : .white)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
