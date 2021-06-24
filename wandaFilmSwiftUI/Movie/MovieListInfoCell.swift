//
//  MovieListInfoCell.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/24.
//
//import class Kingfisher.KingfisherManager

import SwiftUI
import Kingfisher


struct MovieListInfoCell: View {
    
    var movieDetail:MovieDetail?
        
    var isLikeBtnClick: ((Bool) -> ())?
 
    var body: some View {
        
        HStack(){
      
            KFImage(URL(string: "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201502%2F08%2F20150208121019_yexWC.jpeg&refer=http%3A%2F%2Fb-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1627117559&t=f550e4236bc4df86b9b6ec1f8db21753"))
                .resizable()
                .background(Color.red)
                .cornerRadius(5)
                .frame(width: 70, height: 98)
                .aspectRatio(contentMode: .fill)
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
