//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var dic:[String : String] = ["swift":"雨燕;快速","oc":"移动开发","java":"后台开发"]

var Dic:Dictionary<String , String> = ["swift":"雨燕;快速","oc":"移动开发","java":"后台开发"]


dic.count


var emptyDic: [Int : String] = [:]
var emptyDic1: Dictionary<Int, String> = [:]
var emptyDic2 = [String : String]()
var emptyDic3 = Dictionary<Int, String>()


emptyDic == emptyDic1

print(dic["swift"]!)

if let empty = dic["swift"]{
    print(empty)
}

dic.isEmpty

Array(dic.keys)
Array(dic.values)


for key in dic.keys{
    print(key)
}

for value in dic.values{
    print(value)
}


for (key , value ) in dic{
    print(key,value)
}

dic["swift"] = "雨燕"
print(dic);

//返回旧的值
dic.updateValue("iOS", forKey: "swift")

//添加新值
// 往一个没有的key添加value 就会为字典新增元素  字典不会有相同的key和value
dic["c++"] = "后台"
dic
//同上
dic.updateValue("后台", forKey: "c")
dic




//删除字典元素
dic["swift"] = nil;
dic




//返回的是要删除的值
dic.removeValue(forKey:"c")

