//: Playground - noun: a place where people can play

import UIKit

struct Point{
    var x = 0.0
    var y = 0.0
}

struct Size{
    var width = 0.0
    var height = 0.0
}

class Rectangle{
    var orgin = Point()
    var size = Size()
    
    //可计算的属性
    var center: Point{
        get{
            let centerX = orgin.x + size.width / 2
            let centerY = orgin.y + size.height / 2
            return Point(x: centerX,y: centerY)
        }
        set{
            orgin.x = newValue.x - size.width / 2
            orgin.y = newValue.y - size.height / 2
        }
    }
    
    init(orgin: Point , size: Size) {
        self.orgin = orgin
        self.size = size
    }
}



let rectanle = Rectangle(orgin: Point(), size: Size(width: 5, height: 10))

rectanle.center

rectanle.center = Point(x: 5 , y: 5)




		