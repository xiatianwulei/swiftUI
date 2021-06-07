//
//  ContentView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/4.
//

import SwiftUI

struct ContentView: View {
    enum WandaFilmTab {
        case home
        case activityList
    }
    
    @State  private var selection: WandaFilmTab = .home
    
    var body: some View {
        
        TabView(selection: $selection) {
            ActivityListView()
                .tabItem {
                    Label("活动", systemImage: "star")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
