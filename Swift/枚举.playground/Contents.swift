//: Playground - noun: a place where people can play

import UIKit

enum Name{
    case lixun
    case Nannan
    case LL
    case XX
    case MM
    case uu
}


let name = Name.lixun



enum City{
    
    case Beijing
    case Shenzhen
    case Shanghai
    case Wuhan
    case Hangzhou
    
}


let city = City.Beijing

enum Language: Int{
    case OC = 1
    case Swift = 2
    case Java = 3
    case android = 4
    case C = 5
}

let  语言 = Language.init(rawValue: 1)
let 语言1 = Language.RawValue(8)


//enum ProgrammingLanguage: String{
//    case OC = "OC"
//    case Swift = "Swift"
//    case Java = "Java"
//    case android = "android"
//    case C = "C"
//}

enum ProgrammingLanguage: String{
    case OC
    case Swift
    case Java
    case android
    case C
}

let language = ProgrammingLanguage.Swift


//Associate value(关联值)
enum ATMStatus
{
    case Success(Int)
    case Error(String)
}

var money = 100
func withDraw(amout: Int) ->ATMStatus{
    if money >= amout {
        money -= amout
        return .Success(money)
    }else{
        return .Error("钱不够")
    }
}

let result = withDraw(amout: 100)
switch result {
case  .Success:
    print("Success")
case let .Error(newString):
    print("\(newString)")
}


//递归枚举
indirect enum Arithmetic {
    case Number(Int)
    case add(Arithmetic,Arithmetic)
    case multiplication(Arithmetic,Arithmetic)
}

//(5 + 3) * 2

let five = Arithmetic.Number(5)
let three = Arithmetic.Number(3)
let sum = Arithmetic.multiplication(five,three)
let two = Arithmetic.Number(2)
let product = Arithmetic.add(sum,two)










		