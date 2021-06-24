//
//  MineHomeView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/8.
//

import SwiftUI

struct MineHomeView: View {
    
    @State  var titleStrAry:[String] = ["我的勋章","会员码","会员手册","积分中心","我的影单","我的奖品","智能客服","联系我们","设置"]
    init() {
        
//        UITableView.appearance().tableFooterView = UIView()
//        UITableView.appearance().tableHeaderView = UIView()
//        UITableView.appearance().separatorStyle = .none
//        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: UIBarMetrics.default)
//        UINavigationBar.appearance().shadowImage = UIImage()
//        UINavigationBar.appearance().isTranslucent = true
//        UINavigationBar.appearance().tintColor = .clear
//        UINavigationBar.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        List {
            MineHomeHeadView()
                .frame(width: UIScreen.main.bounds.width, height: 300)
                .layoutPriority(1)
                .listRowInsets(EdgeInsets())
                
            List{
                ForEach(titleStrAry, id: \.self, content: { element in
                    MineHomeJumpView(title: element)
                        .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                })
            }
            .listRowInsets(EdgeInsets())
            .frame( height: 450)
            .background(Color.blue)
            .disabled(true)  //不让 List 滚动
            .listStyle(PlainListStyle())
        }
        .listStyle(PlainListStyle())
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct MineHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MineHomeView()
    }
}
