//
//  ActivityListView.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/4.
//

import SwiftUI

struct ActivityListView: View {
    
    var datalist:[String] = ["111","222","3333","3333","3333","222","3333","3333","3333","222","3333","3333","3333","222","3333","3333","3333"]
    init() {
    }
    
    var body: some View {
        
        NavigationView {
            ZStack {
                List {
                    ForEach(datalist,id: \.self) { element in
                        VStack {
                            ActivityListCellView()
                                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                .listRowBackground(Color.green)
                        }.frame(height: 270)
                    }
                }.navigationTitle("活动")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ActivityListView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityListView()
    }
}
