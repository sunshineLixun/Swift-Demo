//: Playground - noun: a place where people can play

import UIKit

var str = "Hello,swift"

//截取字符串
str.substring(with: str.startIndex..<str.index(str.startIndex, offsetBy: 4))
str[str.startIndex..<str.index(str.startIndex, offsetBy: 4)]

//截取后几位的字符串
str[str.index(str.endIndex, offsetBy: -5)..<str.endIndex]


 // to 后面的全不要 form 前面的全不要
str.substring(to: str.startIndex)
str.substring(from: str.startIndex)


//  s为NSString类型
let s = NSString.init(format: "%.2f", 1.0/3.0);

//转换String  as:当做 -->（把NSString当做String）
let s2: String = NSString.init(format: "%.2f", 1.0/3.0) as String;


str.characters.count


var isText: Bool{
    get{
        return str.characters.count > 0
    }
}

print(isText)



