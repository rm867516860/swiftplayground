import UIKit

var greeting = "Hello, playground"
//创建persion 实例，然后定义persion的属性
struct persion{
    var name:String
    var age:Int
}

let todd = persion(name:"rm", age: 123)

//此语法主要是将name 和age 的属性传递给构造器中 name 和age 的属性
//init(name: String, age: Int){
//    self.name = name
//    self.age = age
//}

//构造器的用法
print(todd.name)
print(todd.age)
