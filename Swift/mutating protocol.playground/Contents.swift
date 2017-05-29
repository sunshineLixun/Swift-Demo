//: Playground - noun: a place where people can play

import UIKit


protocol Vehicle {
    
    var numberOfWhells: Int {get}
    
    var color: UIColor  {get set}
 
    mutating func changeColor()
    
}


struct MyCar: Vehicle {
  
    var numberOfWhells: Int = 4
    
    var color: UIColor = UIColor.red
    
     mutating func changeColor() {
        self.color = .blue
    }
    
}


func printLog<T>(_ message: T, file: String = #file, method: String = #function, line:Int = #line) {
    #if DEBUG
    print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}


class MyClass {
    
    
    
}
