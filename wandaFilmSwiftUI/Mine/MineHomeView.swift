//
//  MineHomeView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/8.
//

import SwiftUI

struct MineHomeView: View {
    
    var body: some View {
        VStack{
            MineHomeHeadView().frame( height: 300)
            MineHomeJumpView()
        }
    }
}

struct MineHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MineHomeView()
    }
}
