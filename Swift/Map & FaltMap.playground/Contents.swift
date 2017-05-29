//: Playground - noun: a place where people can play

import UIKit

//MARK: Map函数: map 方法接受一个闭包作为参数， 然后它会遍历整个数组，并对数组中每一个元素执行闭包中定义的操作。 相当于对数组中的所有元素做了一个映射。
//---------------------------------- 例子1

let numbers = [1,2,3,4]

let sumNumbers = numbers.map({ (number: Int) -> Int in
    return number + number
})
sumNumbers


let sumNumbers1 = numbers.map({ number in return number + number})
sumNumbers1


let sumNumbers2 = numbers.map({number in number + number})
sumNumbers2


let sumNumbers3 = numbers.map({$0 + $0})
sumNumbers3


//---------------------------------- 例子2

let cast = ["ObjectiveC","Swift","Java","Android"]

//获取数组中每个字符串的长度
let length = cast.map({ $0.characters.count })
length


let string = cast.map({ $0.lowercased() })
string

//获取数组中每个元素的前三个字母
let substring = cast.map({ (subString: String) -> String? in
    let length = subString.characters.count
    guard length > 0 else{
        return nil
    }
    let string = subString.substring(to: subString.index(subString.startIndex, offsetBy: 3))
    return string
})
substring


//简写
let substring1 = cast.map({ $0.substring(to: $0.index($0.startIndex, offsetBy: 3))} )
substring1


////MARK: faltMap函数
let scores = [[1,2,3] , [4,5,6]]

print(scores.flatMap({ $0.map({ $0 + 2})}))
//[3, 4, 5, 6, 7, 8]

//  scores.flatMap(transform: ([Int]) throws -> Sequence)
// 源码：
/*
 
extension Sequence {
    //...
    public func flatMap(
        @noescape transform: (${GElement}) throws -> S
        ) rethrows -> [S.${GElement}] {
    var result: [S.${GElement}] = []
    for element in self {
    result.append(contentsOf: try transform(element))
    }
    return result
    }
    //...
}
*/

// 把传入的数组进行遍历,添加到一个新的数组中.

let name: [String?] = ["swift", nil , "OC" , "Java"]


print(name.flatMap({ $0 }))
// ["swift", "OC", "Java"]

// name.flatMap(transform: (String?) throws -> ElementOfResult?)
//源码：
/*
extension Sequence {
    // ...
    public func flatMap(
        @noescape transform: (${GElement}) throws -> T?
        ) rethrows -> [T] {
        var result: [T] = []
        for element in self {
            if let newElement = try transform(element) {
                result.append(newElement)
            }
        }
        return result
    }
    // ...
}
*/

// 把传入的数组遍历并对其元素进行解包 过滤掉nil值 会对数组本身结构进行改变

// 例如：过滤掉数组中无用的图片

var images:[String] = ["a.png" , "b.png" , "c.png"]

images.flatMap({ UIImage.init(named: $0) })




