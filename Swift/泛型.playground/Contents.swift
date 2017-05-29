
import UIKit

func swapTwoInt(a: inout Int , b:  inout Int){
    (a , b) = (b, a)
}



func swapTwoDouble(a: inout Double , b:  inout Double){
    (a , b) = (b, a)
}


// 泛型
func swapTwoThing<T>(a: inout T , _ b: inout  T ){
    
    (a , b) = (b, a)
}


var hello = "hello"
var swift = "swift"

swapTwoThing(a: &hello, &swift)

hello
swift



var a = 1
var b = 2

swapTwoThing(a: &a, &b)

a
b


var c = 1
var d = 2
swap(&c, &d)

c
d




struct Queue<T>{
    var items = [T]()
    
        func isEmpty() -> Bool{
        return items.count == 0
    }
    
    
    mutating func push(item: T) {
        items.append(item)
    }
    
    
    mutating func pop() -> T?{
        guard !self.isEmpty() else {
            return nil
        }
        
        return items.removeLast()
    }
    
}

var queue = Queue<Int>()

queue.push(item: 1)
queue.push(item: 2)

queue.isEmpty()

queue.pop()

var stringQueue = Queue<String>()
stringQueue.push(item: "string")
stringQueue.push(item: "swift")
stringQueue
stringQueue.pop()
stringQueue



func findStringIndex(_ array: [String] , _ valueToFind: String) -> Int?{
    for (index, value) in array.enumerated(){
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let strings = ["swift", "oc", "Java", "js", "Android"]

if let selectedIndex = findStringIndex(strings, "swift") {
    print(selectedIndex)
}



func findIndex<T: Equatable>(_ array: [T], valueToFind: T) -> Int?{
    for (index, value) in array.enumerated(){
        if value == valueToFind {
            return index
        }
    }
    return nil
}


let find = findIndex(["kingfirsher", "swift", "sw"], valueToFind: "sw")

let index = findIndex(["kingfirsher", "swift", "sw"], valueToFind: "s")











		
