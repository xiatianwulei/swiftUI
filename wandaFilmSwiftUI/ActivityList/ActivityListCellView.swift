//
//  ActivityListCellView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/4.
//

import SwiftUI
import Kingfisher

struct ActivityListCellView: View {
    
    
    var activityDetail:ActivityListDetail?
    
    var body: some View {
        
        
        GeometryReader { geo in
            VStack(alignment: .leading) {
                
                ActivityListImageView(imageUrlStr: activityDetail?.imgUrl ?? "")
                    .frame(height: 200)
                Spacer(minLength: 1)
                Text("\(activityDetail?.title ?? "")")
                    .lineLimit(1)
                HStack{
                    Spacer()
                    Text("\(activityDetail?.followNumber ?? 0)关注")
                }
            }
        }
    }
}

struct ActivityListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityListCellView()
            .previewLayout(.fixed(width: 414, height: 270))
    }
}

struct ActivityListImageView: View {
    
    var imageUrlStr: String = ""
    var body: some View {
        GeometryReader { geo in
            
            KFImage(URL(string: imageUrlStr))
                .resizable()
                .background(Color.red)
                .frame(width: geo.size.width, height: geo.size.height)
                .alignmentGuide(.leading, computeValue: { dimension in
                    dimension[.leading]
                })
                .aspectRatio(contentMode: .fill)
        }
        .background(Color.yellow)
    }
}

