//
//  MovieList.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/23.
//

import SwiftUI

struct MovieList: View {
    
    @EnvironmentObject var movieListInfo: MovieListInfo
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(movieListInfo.movieList) { (element) in
                    Text("\(element.movieName)")
                }
            }
            .navigationTitle("电影列表")
//            .navigationBarItems(trailing: Button(action: {
//                let movieDetail = MovieDetail()
//                movieDetail.movieName = "haizi"
//                movieDetail.movidId = 1
//                movieDetail.movieDesc = "做大做强"
//                movieListInfo.add(movieDetail)
//            }, label: {
//                Image.init(systemName: "plus")
//                Text("添加电影")
//            }))
//            .navigationBarItems(leading: Button(action: {
//                movieListInfo.removieAllMovies()
//            }, label: {
//                Image.init(systemName: "plus")
//                Text("清除电影")
//            }))
            
            .navigationBarItems(leading: Button(action: {
                let movieDetail = MovieDetail()
                movieDetail.movieName = "haizi"
                movieDetail.movidId = 1
                movieDetail.movieDesc = "做大做强"
                movieListInfo.add(movieDetail)
            }, label: {
                Image.init(systemName: "plus")
                Text("添加电影")
            }) , trailing:  Button(action: {
                movieListInfo.removieAllMovies()
            }, label: {
                Image.init(systemName: "plus")
                Text("清除电影")
            }))
        }
        
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
