import UIKit
import SwiftUI
import Foundation

var greeting = "Hello, playground"

//控制流1.if else,2.guard let
//控制流3. switch else

enum CompassPoint {
    case north
    case south
    case west
    case east
    
}

//var compassHeading = CompassPoint.west

var compassHeading: CompassPoint = .west

switch compassHeading{
    case .west:
        print("west")
    case .north:
        print("north")
    case .south:
        print("south")
    case .east:
        print("east")
}


if compassHeading == .west{
    print("west1")
}


