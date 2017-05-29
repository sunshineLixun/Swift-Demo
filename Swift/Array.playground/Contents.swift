//: Playground - noun: a place where people can play

import UIKit

var numbers: Array<Int> = [1,2,3,4,5,6]
var array: [Int] = [1,2,3,4,5,6]


var string: Array<String> = ["a","b","c"]

var string1: [String] = ["a","b","c"]


var emptyArray: Array<Int> = []
var emptyArray1: [Int] = []
var emptyArray2 = [Int]()
var emptyArray3 = Array<Int>()

// repeated 重复的
var allZeros = [Int](repeating:0, count:5)


//获取数组中最小值
array.min()
//最大值
array.max()

//获取子数组
array[2..<4]
array[2...5]

//元素在数组中的位置
array.index(of: 1)
string.index(of: "a")

// 遍历数组 获取元素和索引
// enumerate枚举
for (i,content) in array.enumerated(){
    print(i,content)
}



//两个数组作比较  比较的是数组中的元素
var oneToFive = [1,2,3,4,5,6]

array == oneToFive


//添加元素
array.append(7)
array += [8]
array + [8]

array.insert(0, at: 0)
array.insert(9, at: array.count)

//删除元素
//array.removeAtIndex(1)
//print(array)
//
////array.removeRange(2..<4)
//array.removeRange(2...4)
//print(array)
//
//array.removeLast(2)
//array.removeFirst(1)


//修改
array[1] = 4
print(array)

array[1..<3] = [10,4]
print(array)

array.replaceSubrange(1...3, with: [4,4,4])


//二维数组
var twoArray:Array<Array<Int>> = [
    [1,2],
    [3,4],
    [5,6],
    [7,8]]







