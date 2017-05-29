//: Playground - noun: a place where people can play

import UIKit


// Equatable：协议  需要重载 == 运算符   Comparable：比较协议 需要重载运算符 (> 或者 < )  CustomStringConvertible:描述协议 需要重载description
struct Record: Equatable,CustomStringConvertible{
    var wines: Int
    
    var losses: Int
    
    var description: String{
        return ""
    }
    
}


// 重载运算符
func == (left: Record , _ right: Record) -> Bool{
    return left.wines == right.wines && right.losses == right.losses
}






