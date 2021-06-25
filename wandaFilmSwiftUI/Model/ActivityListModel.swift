//
//  ActivityListModel.swift
//  wandaFilmSwiftUI
//
//  Created by 刁宏瑞 on 2021/6/25.
//

import Foundation

// model
class ActivityListDetail: Identifiable,Codable {
    
    var commendId: Int?
    var identifier: String?
    var followNumber: Int?
    var jumpTo: String?
    var title: String?
    var url: String?
    var currentTime: Int?
    var activityId: String?
    var operate: String?
    var isInAppWebView: Bool?
    var startTime: Int?
    var endTime: Int?
    var imgUrl: String?
    //
    var cityId: String?
    var filmId: String?
    var cinemaId: String?
    var orderId: String?
    var showTime: Int?
    var promoID: String?
    var status: Bool?
    var commentId: Int?
}

class ActivityListInfo: Codable {
    var activityList: [ActivityListDetail]?
    var activityTabs: [ActivityListDetail]?
}

// observable
class ActivityListInfoViewModel: ObservableObject {
    
    @Published var activityListInfo: ActivityListInfo?
    
    init() {
        // 读取json 文件
        guard let urlPath = Bundle.main.path(forResource: "wandaActivityList", ofType: "json") else { return }
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: urlPath))
            let jsonData: Any = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
            print("present = ", jsonData)
            let decoder = JSONDecoder()
            let activityList = try decoder.decode(ActivityListInfo.self, from: data)
            activityListInfo = activityList
            
        } catch let error {
            print(error)
        }
    }
}
