import UIKit

var greeting = "Hello, playground"

//guard 是 if 的转型让代码可读性更强，《使用swift开发app》P298
let birthdayIsToday : Bool  = true
var invitedGuests: Int = 2
var cakeCandlesLit : Bool = true

//if做3层提哦啊监判断
func singHappyBirthday01() {
  if birthdayIsToday {
    if invitedGuests > 0 {
      if cakeCandlesLit {
        print("Happy Birthday to you!")
      } else {
        print("The cake's candles haven't been lit.")
      }
    } else {
      print("It's just a family party.")
    }
  } else {
    print("No one has a birthday today.")
  }
}

var happy01: () = singHappyBirthday01()


//guard简化代码
func singHappyBirthday02(){
    guard birthdayIsToday else {
        
        print("No one has a birthday today.")
        return
    }
    
    guard (invitedGuests > 0) else {
        print("It's just a family party.")
        return
    }
    
    guard cakeCandlesLit else {
        print("The cake's candles haven't been lit.")
        return
    }
    
    print("Happy Birthday to you!")
}

var happy02: () = singHappyBirthday02()

 
