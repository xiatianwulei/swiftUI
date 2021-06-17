//
//  MineHomeJumpView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/8.
//

import SwiftUI

struct MineHomeJumpView: View {
    
    var title:String = ""
    var body: some View {
        return HStack{
            Image(systemName: "heart")
                .frame(width: 16, height: 16, alignment: .center)
                .aspectRatio(contentMode: .fill)
            Text("\(title)")
            Spacer()
        }
    }
}

struct MineHomeJumpView_Previews: PreviewProvider {
    static var previews: some View {
        MineHomeJumpView()
    }
}

