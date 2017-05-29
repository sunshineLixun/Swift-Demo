//: Playground - noun: a place where people can play

import UIKit

// lazy Property  懒加载

class Colsed{
    let start: Int
    let end: Int
    var width: Int{
        return end - start
    }
    
    //懒加载（闭包）
    lazy var sum: Int = {
        
        print("sum")
        var res = 0
        for i in self.start...self.end{
            res += i
        }
        return res
    }()
    

    init?(start: Int , end: Int) {
        if start > end {
            return nil
        }
        self.start = start
        self.end = end
    }
    
}


let closedRange = Colsed(start: 0 , end: 100)!
closedRange.sum
closedRange.sum
closedRange.sum




































