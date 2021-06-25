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
                ForEach(movieListInfo.movieList) {(element) in
                    NavigationLink(destination: MovieDetailView()    , label: {
                        MovieListInfoCell(movieDetail: element) { isLike in
                            element.isLike = isLike
                            movieListInfo.toggle(element)
                        }
                    })
                }
            }
            
            
            .navigationTitle("电影列表")
            .navigationBarItems(leading: Button(action: {
                let movieDetail = MovieDetail()
                movieDetail.movieName = "做大做大做强"
                movieDetail.movidId = 1
                movieDetail.movieDesc = "做大做强做大做强做大做强做大做强做大做强做大做强做大做强"
                movieDetail.isLike = false
                movieListInfo.add(movieDetail)
            }, label: {
                Image.init(systemName: "plus")
                Text("添加电影")
            }) , trailing:  Button(action: {
                movieListInfo.removieAllMovies()
            }, label: {
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
