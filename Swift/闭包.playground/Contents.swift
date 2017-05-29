//: Playground - noun: a place where people can play

import UIKit

var array: [Int] = []

for _ in  0..<100{
    array.append(Int( arc4random()%1000))
}
array

//从小到大
array.sorted(by: <)

//从大到小
array.sorted(by: >)


//从大到小的闭包
array.sort(by: { (a : Int , b: Int) -> Bool in

return a > b

})

array.sorted(by: {(a: Int , b : Int) -> Bool in
return a > b
})


//闭包简化 
// 从大到小
array.sorted(by: {a, b  in  a > b})

array.sort(by: {$0 < $1})


array.sort{a,b in
    return a > b
}


var items: [() -> Void] = []

func addItmes(completion:  @escaping () -> Void){
    items.append(completion)
}


func startRequest(_ callBack:  @escaping () -> Void){
    DispatchQueue.global().asyncAfter(deadline: DispatchTime.now() + 1, execute: {
        callBack()
    })
}




