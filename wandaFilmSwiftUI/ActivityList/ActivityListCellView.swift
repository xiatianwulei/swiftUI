//
//  ActivityListCellView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/4.
//

import SwiftUI

struct ActivityListCellView: View {
    
    @State var activity:String = ""
    
    var body: some View {
        VStack(alignment:.leading, spacing:0) {
            
            ActivityListImageView()
                .frame(height: 200)
            Spacer(minLength: 5)
            Text("\(activity)")
            Text("活动内容")
            Spacer(minLength: 2)
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
    var body: some View {
        GeometryReader { geo in
            Image("haizei")
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

