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
    
    let movieListInfo = MovieListInfo()
    let activityListInfo = ActivityListInfoViewModel()
    
    
    @State  private var selection: WandaFilmTab = .home
    
    var body: some View {
        
        TabView(selection: $selection) {
            MovieList().tabItem {
                Label("电影", systemImage: "plus")
            }
            .environmentObject(movieListInfo)
            ActivityListView()
                .tabItem {
                    Label("活动", systemImage: "star")
                }
                .environmentObject(activityListInfo)
            MineHomeView().tabItem {
                Label("我的", systemImage: "heart")
            }
            
//            ContentViewFrame().tabItem {
//                Label("studyFrameUI", systemImage: "heart")
//            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
