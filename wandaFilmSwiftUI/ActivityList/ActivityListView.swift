//
//  ActivityListView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/4.
//

import SwiftUI

struct ActivityListView: View {
    
    var datalist:[String] = ["111","222","3333","3333","3333"]
    
    
    init() {
        let appearance = UITableViewCell.appearance()
        appearance.selectionStyle = .none
        //          appearance.accessoryType = .none
    }
    
    var body: some View {
        ZStack {
            List(datalist, id: \.self) { (element) in
                VStack {
                    ActivityListCellView()
                }.frame(height: 270)
            }.background(Color.red)
            NavigationLink(destination: Text("111")) {
                EmptyView()
            }.fixedSize().navigationTitle("活动")
            
        }
    }
}

struct ActivityListView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityListView()
    }
}
