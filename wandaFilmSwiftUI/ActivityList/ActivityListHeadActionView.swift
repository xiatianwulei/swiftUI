//
//  ActivityListHeadActionView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/17.
//

import SwiftUI

struct ActivityListHeadActionView: View {
    var body: some View {
        
        
        HStack(spacing:1){
            
            VStack(alignment:.center){
                Spacer(minLength: 20)
                Image("haizei")
                    .frame(width: 45, height: 45,alignment: .center)
                    .cornerRadius(22.5)
                Text("每月签到")
                Spacer(minLength: 15)
            }.frame(width: UIScreen.main.bounds.size.width / 3, height: 122)
            .background(Color.blue)
            
            VStack(alignment:.center){
                Spacer(minLength: 20)
                Image("haizei")
                    .frame(width: 45, height: 45,alignment: .center)
                    .cornerRadius(22.5)
                Text("每月签到")
                Spacer(minLength: 15)
            }.frame(width: UIScreen.main.bounds.size.width / 3, height: 122)
            .background(Color.red)
            VStack(alignment:.center){
                Spacer(minLength: 20)
                Image("haizei")
                    .frame(width: 45, height: 45,alignment: .center)
                    .cornerRadius(22.5)
                Text("每月签到")
                Spacer(minLength: 15)
            }.frame(width: UIScreen.main.bounds.size.width / 3, height: 122)
            .background(Color.yellow)
        }
            
    }
}

struct ActivityListHeadActionView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityListHeadActionView()
            .previewLayout(.fixed(width: 390, height: 122))
    }
}
