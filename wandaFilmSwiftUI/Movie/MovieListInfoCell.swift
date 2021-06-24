//
//  MovieListInfoCell.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/24.
//

import SwiftUI

struct MovieListInfoCell: View {
    
    var movieDetail:MovieDetail?
        
    var isLikeBtnClick: ((Bool) -> ())?
 
    var body: some View {
        
        HStack(){
      
            Image("haizei")
                .resizable()
                .background(Color.red)
                .cornerRadius(5)
                .frame(width: 70, height: 98)
            VStack(alignment: HorizontalAlignment.leading, spacing: 5) {
                Text("\(movieDetail?.movieName ?? "")")
                    .layoutPriority(0)
                Text("\(movieDetail?.movieDesc ?? "")")
                    .layoutPriority(1)
                
            }
            .background(Color.red)
            .frame(height: 98)
            
            Button {
                print("喜欢按钮点击")
                
                if let block = isLikeBtnClick {
                    block(movieDetail?.isLike ?? false)
                }
                
            } label: {
                if (movieDetail?.isLike ?? false) == true {
                    Image(systemName: "heart.fill")
                } else {
                    Image(systemName: "heart")
                }
            }
            .buttonStyle(BorderlessButtonStyle())

        }
    }
    
}

struct MovieListInfoCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieListInfoCell()
            .previewLayout(.fixed(width: 414, height: 270))
    }
}
