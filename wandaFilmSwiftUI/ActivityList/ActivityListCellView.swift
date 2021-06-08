//
//  ActivityListCellView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/4.
//

import SwiftUI

struct ActivityListCellView: View {
    var body: some View {
        
        VStack {
            GeometryReader { geo in
                Image("haizei")
                    .resizable()
                    .frame(width: geo.size.width, height: 200)
                    .aspectRatio(contentMode: .fill)
            }
            
            HStack {
                Text("优惠券密码卡活动-抽取")
                Spacer()
            }
            
            HStack {
                Label(
                    title: { Text("天活动结束") },
                    icon: { /*@START_MENU_TOKEN@*/Image(systemName: "42.circle")/*@END_MENU_TOKEN@*/ }
                )
                Spacer()
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
