//: Playground - noun: a place where people can play

import UIKit

class MyClass {
    
    class func method(number: Int) -> Int {
        return number + 1
    }
    
    func method(number: Int) -> Int {
        return number
    }
    
    
}


let f = MyClass.method(number: 1)


let obj = MyClass()
let f2 = MyClass.method(obj)
let result = f2(1)



		