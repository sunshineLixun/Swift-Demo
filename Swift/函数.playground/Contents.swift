//: Playground - noun: a place where people can play

import UIKit


// 参数 + 返回值
func sayHello(name: String?) -> String{
    return "Hello " + ( name ?? "lixun")
}


sayHello(name: "Swift")
sayHello(name: nil)



// 无参 无返回值

func sayHello(){
    print("say Hello")
}

sayHello()

func printHello() -> Void{
    print("Hello")
}

printHello()



//外部参数名

// 1.更详细的外部参数名
func sayHelloTo ( name: String , withGreetingWord greeting: String) -> String{
    return "\(name)  \(greeting)"
}


sayHelloTo(name:"Swift", withGreetingWord: "Hello")




//2.忽略外部参数名
func mutiply ( num1: Int , _ num2: Int) -> Int{
   return num1 * num2
}



mutiply(num1:2, 4)


//默认参数
func sayHiTo ( name: String , withGreetingWord greeting: String = "hello") -> String{
    return "\(name)  \(greeting)"
}


sayHiTo(name: "lixun")



// 变长参数类型
func mean (numbers: Double...) -> Double{
    var sum = 0.0
    for number in numbers{
        sum += number
    }
    return sum / Double(numbers.count);
}

mean(numbers: 1)
mean(numbers: 1,2,3,4,5,6)


//函数内部改变函数外部传入参数的数值
// 在新的规范中，可以这样来让传入的函数为可变类型
func toBinaryForSwift3( num: Int ) -> String{
    
    // 让传入的参数num成为variable类型
    var num = num
    
    var res = ""
    
    repeat{
        res = String(num%2) + res
        num /= 2
    }while num != 0
    
    return res
}


toBinaryForSwift3(num: 4)



//inout 关键字
func initArray( array: inout [Int], by value: Int){
    
    for i in 0..<array.count{
        array[i] = value
    }
    
}


var array = [1,2,3,4,5]

initArray(array: &array, by: 2)



//将函数当做参数使用
func add(a : Int, _ b: Int) -> Int {
    return a * b
}


let addFunc = add
addFunc(3,5)



//上述代码可以写为 (推断出函数类型的声明为)  (Int , Int) -> Int 类似这种结构
let addOther: (Int , Int) -> Int = add
addOther(5,5)




var arr:[Int] = []

for _ in 0..<100{
    arr.append(Int(arc4random()))
}
arr

//数组的排序呢

//从小到大的排序呢 但不改变数组本身
arr.sort()
arr
//从小到大的排序呢 会改变数组本身
arr.sort()
arr



// 定义一个从大到小排列的函数
func biggerNumbersFirst(a: Int , _ b: Int) -> Bool{
    
//    if a > b {
//        return true
//    }else {return false}
    
   return  a > b
    
}


// isOrderedBefore: (Int, Int) -> Bool 传入的是 一个函数（其返回值为bool值）

arr.sorted(by: biggerNumbersFirst)














