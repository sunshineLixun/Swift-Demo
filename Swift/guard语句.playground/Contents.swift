//: Playground - noun: a place where people can play

import UIKit

var str = "Hello,Swift"
//guard 保护,保卫
func buy (money :Int, price:Int, capacity:Int,volume:Int){
    guard money >= price else{
        print("钱不够")
        return;
    }
    
    guard capacity >= volume else{
        print("装不下")
        return;
    }
    
    print("我买了")
}



//------------字符串--------------
//遍历字符串

for c in str.characters{
    print(c);
}


//获取第一个字符串
str[str.startIndex];

// strIndex 为index
let strIndex = str.startIndex;

//获取第2个元素
str[str.index(strIndex, offsetBy: 1)]

//获取某个下标前一个下标对应的字符
str[str.index(before: str.endIndex)];

//获取某个下标后一个下标对应的字符
str[str.index(after: strIndex)];

//组成前闭后开的区间
//[str.startIndex,  str.endIndex)


//获取最后一个字符串
str[str.index(before: str.endIndex)]

//获取0到5的子字符串
str[str.startIndex..<str.index(strIndex, offsetBy: 5)]
//获取0到6的子字符串
str[str.startIndex...str.index(strIndex, offsetBy: 5)]



let spaceIndex = str.index(strIndex, offsetBy: 5)
//获取某一区间的字符串 (0~5)区间 称为range
let range = strIndex..<spaceIndex
str[range]


//替换字符串
str.replaceSubrange(range, with: "lixun");

//添加字符串
str.append("lmn")
str + str;
str.insert("?", at: str.endIndex);

//删除后两位
str.removeSubrange(str.index(str.endIndex, offsetBy: -2)..<str.endIndex);

//大小写
str.uppercased();
str.lowercased();

//每个单词首字母大写
str.capitalized;

//判断包含某一字符串
str.contains("Hello");



