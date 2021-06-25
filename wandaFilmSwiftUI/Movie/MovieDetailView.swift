//
//  MovieDetailView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/25.
//

import SwiftUI

struct MovieDetailView: View {
    @EnvironmentObject var movieListInfo: MovieListInfo 
    var body: some View {
        
        return List(movieListInfo.movieList) { (element) in
            Text("\(element.movieName)")
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}
