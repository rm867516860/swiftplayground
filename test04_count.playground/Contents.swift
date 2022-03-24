import UIKit
import SwiftUI

//闭包，把函数简化
//http://www.swift51.com/swift5.1/02_language_guide/07_Closures.html

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

//函数表达
func backword (_ s1 : String, s2 : String) -> Bool{
    
    return s1 > s2
}


//闭包表达形式
var reversename = names.sorted(by: {(s1 : String, s2: String) -> Bool in
    return s1 > s2
})



let back = names.sorted(by: backword)
print(back)
print(reversename)
