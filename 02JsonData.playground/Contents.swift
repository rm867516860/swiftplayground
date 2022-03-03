//import UIKit
//
////https://blog.csdn.net/grl18840839630/article/details/81437244
//
//
//
////import SwiftyJSON
////转成JSON对象
////let jsonData = JSON.init(data)
//
//
////这是模拟数据
//let baseInfo: [String : Any] = ["build_name":"置信·原墅",
//                                  "build_address":"学院中路与金桥路交汇处东北侧",
//                                  "build_num": 12,
//                                  "room_num": 588,
//                                  "area_address":"浙江省温州市鹿城区五马街道"]
//
//
//
//
//struct BuildBaseInfoModel {
//    var build_name: String?
//    var build_address: String?
//    var build_num: String?
//    var room_num: String?
//    var area_address: String?
//
//    init(jsonData: JSON) {
//        build_name    = jsonData["build_name"].stringValue
//        build_address = jsonData["build_address"].stringValue
//        area_address  = jsonData["area_address"].stringValue
//        room_num      = jsonData["room_num"].stringValue
//        build_num     = jsonData["build_num"].stringValue
//    }
//}
//
//let jsonData = JSON(baseInfo)
//let model = BuildBaseInfoModel.init(jsonData: jsonData)
//// 会得到创建好的 BuildBaseInfoModel类型的 对象model
//// 也可以这样写
//let model = BuildBaseInfoModel(jsonData: jsonData)
//
//
//
//struct BuildBaseInfoModel02 {
//
//    var build_name: String?
//    var build_address: String?
//    var build_num: String?
//    var room_num: String?
//    var area_address: String?
//    var detail_address: DetailAddressModel
//    var area:[Any]?
//    // 这里面积area中就不能再用arrayValue获取了，因为arrayValue获取的为JSON类型，我们需要转为我们需要的对象
//    init(jsonData: JSON) {
//        build_name    = jsonData["build_name"].stringValue
//        build_address = jsonData["build_address"].stringValue
//        area_address  = jsonData["area_address"].stringValue
//        room_num      = jsonData["room_num"].stringValue
//        build_num     = jsonData["build_num"].stringValue
//        area          = jsonData["area"].arrayObject
//        detail_address = DetailAddressModel(jsonData: jsonData["detail_address"])
//    }
//}
//struct DetailAddressModel {
//    var province: String?
//    var city: String?
//    var district: String?
//    var street: String?
//
//    init(jsonData: JSON) {
//        province = jsonData["province"].stringValue
//        city = jsonData["city"].stringValue
//        district = jsonData["district"].stringValue
//        street = jsonData["street"].stringValue
//    }
//
//}
//
//let model = BuildBaseInfoModel02(jsonData: jsonData)
//print(model.detail_address.city)
//print(model.area?.first)
//print(model.area?[1])
//
