//: Playground - noun: a place where people can play

import UIKit

//类的构造方法
class People{
    
    //成员变量
    var name: String
    var age: Int
    var secondName: String
    
    //初始化方法
    init(name: String, age:Int , secondName: String) {
        self.name = name
        self.age = age
        self.secondName = secondName
    }
    
    //可失败的初始化方法
    init?(fullName: String) {
      guard fullName.range(of: " ") != nil else { return nil }
        self.name = fullName.substring(to: fullName.startIndex)
        self.secondName = fullName.substring(to: fullName.endIndex)
        self.age = 11;
    }
    
    
    //方法
    func fullName() -> String {
        return "lixun"
    }
    
}

let people = People(name:"lixun",age:24,secondName: "sss")

let peoson = People.init(fullName: "sss sss")

people.fullName()
peoson?.fullName()



//类与结构体的区别
// 结构体： 值类型 可以对其进行拷贝 修改拷贝的值 不会影响被拷贝的值（分配两个内存空间  互不影响）
// 类 ：属于应用类型  实例化类 不能对其拷贝 即使进行赋值操作 也会同时影响 （只不过是两个不同的名字，但指向的是同一片内存空间）
/*
1.结构体===值;类===物体

2.结构体不可被继承;类可以被继承

3.结构体更加轻量级,小规模的类建议使用结构体

4.结构体较为高效,原因:结构体的内存空间在栈,类的内存空间在堆.堆中查找地址速度较慢
*/


//类的等价 (===) 比较的是指向的内存空间 不是比较值得相等
peoson === people

people === people

people !== peoson













		
