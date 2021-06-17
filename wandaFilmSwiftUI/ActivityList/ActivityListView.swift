//
//  ActivityListView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/4.
//

import SwiftUI

struct ActivityListView: View {
    
    var datalist:[String] = ["活动名称活动名称活动名称活动名称活动名称活动名称活动名称活动名称活动名称活动名称活动名称活动名称活动名称活动名称活动名称活动名称","222","3333","3333","3333","222","3333","3333","3333","222","3333","3333","3333","222","3333","3333","3333"]
    init() {
    }
    
    var body: some View {
        
        NavigationView {
            List{
                VStack {
                    ActivityListHeadActionView()
                    Spacer(minLength: 5)
                }
                .listRowInsets(EdgeInsets()) //  去掉两侧间隙
                ForEach(datalist, id: \.self) { (element) in
                    ActivityListCellView(activity: element)
                        .frame(height: 270)
                }
//                .listRowInsets(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
            }
            .navigationTitle("活动列表")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ActivityListView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityListView()
    }
}
