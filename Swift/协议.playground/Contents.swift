//: Playground - noun: a place where people can play

import UIKit


// 协议的声明 加上class 表明协议只能被类所遵循 如果不写 则表示都可以遵循
protocol People: class{
    
    //协议的属性只能用 var 变量
  
    var name : String {get set}
    
    var age : Int {get}
    
  
    func run()
    
    func eat(food: String)

    //如果结构体遵循协议 改变结构体自身 可使用 mutating 如果是类 就无所谓
    func changeName(newName: String)
}



// 遵循协议
class Son: People{
    
   
    
    var name: String = "swift"
    
    let age: Int = 0
    
    func run() {
     print("run")
    }
    
    func eat(food: String) {
         print("eat")
    }
    
    func changeName(newName: String) {
        name = newName
    }
    
}



let son = Son()

//也可以把协议当做一个类型
let ason : People = son



// 别名
// 将Double 起名为Length 实际上还是Double类型
typealias Length = Double

// 例子:
protocol WeightCalcuable {
    
//    associatedtype 与 typealias 意思一样
    associatedtype WeightType
    
    var weight: WeightType {get}
}


class Car: WeightCalcuable{
    
    typealias WeightType = Double
    
    var weight: Double = 132

}



class Ship: WeightCalcuable{
    
    typealias WeightType = Double
    
    var weight: WeightType
    
    
    init(weight: Int) {
        self.weight = Ship.WeightType(weight)
    }
    
//    init(weight: Double) {
//        self.weight = weight
//    }
    
    
}

let ship = Ship.init(weight: 1111)












