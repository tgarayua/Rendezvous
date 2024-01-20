//
//  NavigationBarView.swift
//  Rendezvous
//
//  Created by Thomas Garayua on 1/20/24.
//

import SwiftUI



struct NavigationBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            EventView()
                .tabItem {
                    Image(systemName: "square.and.pencil.circle")
                }
            
            CalendarView()
                .tabItem {
                    Image(systemName: "calendar.circle.fill")
                }
            
            NotificationView()
                .tabItem {
                    Image(systemName: "bell.fill")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                }
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}

