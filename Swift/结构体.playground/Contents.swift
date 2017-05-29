//: Playground - noun: a place where people can play

import UIKit



//struct Language{
//    let OC: String
//    let Swift: String
//}


// 结构体是值类型
struct Language{
    var OC: String
    var Swift: String
}

var language = Language(OC: "OC", Swift: "Swift")
language.OC = "oc"
language.Swift = "swift"

var p1 = language;
var p2 = p1;

p2.OC = "OC"
p1.OC



//改变结构体自身的值  //枚举也是值类型
struct Location{
    var x = 0;
    var y = 0;
    
    //mutating 变化的  覆盖副本（被拷贝的）
    mutating func goEast(){
        self.x += 1
    }
}

var location = Location()
location.goEast()









