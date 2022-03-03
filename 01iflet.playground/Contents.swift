import UIKit

/*
 20220303
 if let用法：
 1.optionalName值存在，直接赋值给name
 2.optionalName的值不存在，执行else条件内容
 */

//https://blog.csdn.net/Heiro_lyl/article/details/53379238
func iflet01() {
    let optionalName: String? = "John"
    var greeting = "Hello"
    //校验optionalName是否有值，如果有值就赋值给name
    if let name = optionalName {
        greeting = "Hello, \(name)"
    }else{
        greeting = "Hello, rm"
    }
    print(greeting)
}


func iflet02() {
    let optionalName: String? = nil
    var greeting = "Hello"
    //校验optionalName是否有值，没有值就跳转直行else
    if let name = optionalName {
        greeting = "Hello, \(name)"
    }else{
        greeting = "Hello, rm"
    }
    print(greeting)
}

var iflet1: () = iflet01()

var iflet2: () = iflet02()








