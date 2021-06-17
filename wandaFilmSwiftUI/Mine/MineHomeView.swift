//
//  MineHomeView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/8.
//

import SwiftUI

struct MineHomeView: View {
    
  @State  var titleStrAry:[String] = ["我的勋章","会员码","会员手册","积分中心","我的影单","我的奖品","智能客服","联系我们","设置"]
    
    var body: some View {
        List {
            MineHomeHeadView().frame( height: 300)
            List{
                ForEach(titleStrAry, id: \.self, content: { element in
                    MineHomeJumpView(title: element)
                        
                })
                
            }
            .listRowInsets(EdgeInsets())
            .frame( height: UIScreen.main.bounds.height - 300)
            .background(Color.white)
            .listStyle(InsetGroupedListStyle())
        }
    }
    

}

struct MineHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MineHomeView()
    }
}
