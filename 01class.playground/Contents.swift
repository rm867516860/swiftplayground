import UIKit

var greeting = "Hello, playground"

class Shoes {
    let color :String
    let size : Int
    let hasLaces : Bool
    
    init(color: String, size: Int, hasLaces: Bool){
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
}



let myshoe = Shoes(color: "red", size: 24, hasLaces: true)

let yourshoe = Shoes(color: "yellow", size: 34, hasLaces: false)

print(myshoe)
print(yourshoe)

//CustomStringConvertible协议返回的实例属性是String
class Shoes01 : CustomStringConvertible{
    let color :String
    let size : Int
    let hasLaces : Bool
    
    init(color: String, size: Int, hasLaces: Bool){
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
    
    var description: String{
        return "Shoes(color:\(color),size:\(size),hasLaces\(hasLaces)"
    }
}
let myshoe1 = Shoes01(color: "red", size: 24, hasLaces: true)

let yourshoe1 = Shoes01(color: "yellow", size: 34, hasLaces: false)

print(myshoe1)
print(yourshoe1)

