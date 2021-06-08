//
//  MineHomeJumpView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/8.
//

import SwiftUI

struct MineHomeJumpView: View {
    var titleStrAry:[String] = ["我的勋章","会员码","会员手册","积分中心","我的影单","我的奖品","智能客服","联系我们","设置"]
    
    var body: some View {
        return  List {
            ForEach(titleStrAry, id: \.self) { element in
                HStack{
                    Image(systemName: "heart")
                        .frame(width: 16, height: 16, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                       
                    
                    Text("\(element)")
                }
            }
        }
    }
}

struct MineHomeJumpView_Previews: PreviewProvider {
    static var previews: some View {
        MineHomeJumpView()
    }
}
