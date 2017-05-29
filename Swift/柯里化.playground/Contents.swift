

func addTo(_ adder: Int) -> (Int) -> Int {
    return{
        num in
          return num + adder
    }
}


let addTwo = addTo(1)
let result = addTwo(6)




func greaterThan(_ comparer: Int) -> (Int) -> Bool {
    ///$0表示 返回的函数(Int) -> Bool中每一个元素与初始值相比较
    return {$0 > comparer}
}


let greaterThan10 = greaterThan(10)

greaterThan10(13)

greaterThan10(8)



		