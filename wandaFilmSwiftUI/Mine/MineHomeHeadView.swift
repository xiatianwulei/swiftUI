//
//  MineHomeHeadView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/8.
//

import SwiftUI

struct MineHomeHeadView: View {
    var body: some View {
        
        LazyHStack{
            Spacer(minLength: 15)
            Image("haha")
                .frame(width: 77, height: 77, alignment: .leading)
                .background(Color.red)
                .cornerRadius(38.5)
            VStack {
                HStack {
                    Text("夏天无泪")
                        .multilineTextAlignment(.leading)
                        .padding(3)
                    Spacer(minLength: 20)
                }
                
                HStack {
                    Text("18501393475")
                    Spacer()
                }
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
                    
                }
            }.frame(alignment: .leading)
 

            Spacer()
        }
        
    }
}

struct MineHomeHeadView_Previews: PreviewProvider {
    static var previews: some View {
        MineHomeHeadView().previewLayout(.fixed(width: 414, height: 170))
    }
}
