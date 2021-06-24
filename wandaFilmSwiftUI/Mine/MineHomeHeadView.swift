//
//  MineHomeHeadView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/8.
//

import SwiftUI

struct MineHomeHeadView: View {
    var body: some View {
        GeometryReader(content: { geometry in
            LazyVStack(alignment:.leading){
                MineHomeHeadUserInfoView()
                    .frame( height: 170)
                
                MineHomeOrderQuanCardView()
                    .frame(width: geometry.size.width)
            }
            .frame(width: geometry.size.width, height:geometry.size.height)
            
            .background(Color.red)
        })
        
    }
}

struct MineHomeHeadView_Previews: PreviewProvider {
    static var previews: some View {
        MineHomeHeadView().previewLayout(.fixed(width: 414, height: 170))
    }
}

struct MineHomeHeadUserInfoView:View {
    var body: some View {
        
        HStack(alignment: .top) {
            Spacer(minLength: 15)
            Image("haizei")
                .frame(width: 77, height: 77, alignment: .leading)
                .background(Color.red)
                .cornerRadius(38.5)
            VStack(alignment: .leading) {
                Text("夏天无泪")
                    .multilineTextAlignment(.leading)
                    .padding(3)
                Text("18501393475")
                HStack {
                    Image("haizei")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(10)
                    Spacer().frame(width: 0)
                    Text("万达影迷三星会员")
                        .padding(2)
                        .font(Font.system(size: 9))
                        .lineLimit(1)
                        .background(Color.green)
                        .cornerRadius(8)
                    Image("haizei")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(10)
                    Text("万达影迷三星会员")
                        .padding(.all, 2)
                        .font(Font.system(size: 9))
                        .lineLimit(1)
                        .background(Color.gray)
                        .cornerRadius(8)
                    
                    Spacer()
                    
                    
                }.frame(alignment: .leading)
            }
            
        }
    }
}

struct MineHomeOrderQuanCardView:View {
    
    var body: some View {
        
        GeometryReader { (make)  in
            LazyHStack(alignment: .center, spacing: 10) {
                LazyVStack {
                    Image("haizei")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .aspectRatio(contentMode: .fit)
                    Text("订单")
                        .font(Font.system(size: 12))
                        .fixedSize(horizontal: true, vertical: false)
                }
                .background(Color.yellow)
                .frame(width:(make.size.width - 20) / 3, height: 77)
                LazyVStack {
                    Image("haizei")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .aspectRatio(contentMode: .fit)
                    Text("订单")
                        .font(Font.system(size: 12))
                        .fixedSize(horizontal: true, vertical: false)
                }
                .background(Color.yellow)
                .frame(width:(make.size.width - 20) / 3, height: 77)

                LazyVStack {
                    Image("haizei")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .aspectRatio(contentMode: .fit)
                    Text("订单")
                        .font(Font.system(size: 12))

                }
                .background(Color.yellow)
                .frame(width:(make.size.width - 20) / 3, height: 77)

                
            }
        }
        
    }
    
}
