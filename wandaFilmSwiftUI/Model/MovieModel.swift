//
//  MovieModel.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/23.
//

import Foundation

class MovieDetail: Identifiable, Codable {
    
    var movieName:String = ""
    var movieDesc:String = ""
    var movidId:Int?
}

class MovieListInfo: ObservableObject {
    
    @Published  var movieList:[MovieDetail] = []
    static let saveKey:String = "movieListKey"
    init() {
        if let data = UserDefaults.standard.object(forKey: MovieListInfo.saveKey) {
            if let  movieList = try? JSONDecoder().decode([MovieDetail].self, from: data as! Data) {
                self.movieList = movieList
            }
        }
    }
    
   private func save()  {
        if let encodedData = try? JSONEncoder().encode(movieList) {
            UserDefaults.standard.setValue(encodedData, forKey: MovieListInfo.saveKey)
        }
    }
    func add(_ movie:MovieDetail) {
        movieList.append(movie)
        save()
    }
    func removieAllMovies() {
        movieList.removeLast()
        save()
    }
}
