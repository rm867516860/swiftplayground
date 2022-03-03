import UIKit

var greeting = "Hello, playground"

//Json对象


class Jsondata {
    //json字符串
    let user:[String: Any] = [
                "uname": "张三",
                "tel": ["mobile": "138", "home": "010"]
            ]
    
    //判断user的字符类型为json
    func usr(){
        if !JSONSerialization.isValidJSONObject(user) {
            print("is not a valid json object")
        }else{
            print("is a valid json object")
        }
        
        let jsonstr="{\"status\":\"1\",\"data\":{\"udid\":\"5bce8b974adbc6a60858d41657f1761305f62ce9\",\"time\":\"1580546728\",\"orderid\":\"20200201164519672\"}}"
        let jsondata1 = jsonstr.data(using: .utf8)
        print("jsondata====\(jsondata1)")
    }
    
    
    func Json01(){
        //try:确认user存在
        //将json-data-字符串
        let data = try? JSONSerialization.data(withJSONObject: user, options: .prettyPrinted)
        print(data)
        let Jsonstr = String(data: data!, encoding: .utf8)
        print("Jsonstr============\(Jsonstr)")
        
        //data 转化成json
        let json2 = try?JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String: Any]
        
        if !JSONSerialization.isValidJSONObject(json2) {
            print("is not a valid json object")
        }else{
            print("is a valid json object")
        }
        
        let uname = json2?["uname"]
        let tel = json2?["tel"]
        
        print("uname=\(uname)","tel=\(tel)")
    }
    
    
    
}

var jsondata = Jsondata()

jsondata.usr()
jsondata.Json01()



