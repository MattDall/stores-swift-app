//
//  MainView.swift
//  Stores
//
//  Created by Matúš Dalloš on 04.07.2021.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text ("Home")
                }
            MapViewV2()
                .tabItem {
                    Image(systemName: "map")
                    Text ("Map")
                }
            ListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text ("List")
                }
        } //: TAB
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .previewDevice("iPhone 12 Pro")
    }
}
