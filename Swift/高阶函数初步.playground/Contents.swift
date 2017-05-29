//: Playground - noun: a place where people can play

import UIKit


//第二个参数 是一个函数(将函数当做参数使用)
func changeScore( scores: inout [Int], by changeScore:(Int)->Int){
    for (index, score) in scores.enumerated(){
        scores[index] = changeScore(score)
    }
}

func changeScore(score:Int)->Int{
    return Int(sqrt(Double(score)) * 10)
}

var scores: [Int] = [44,55,66,77,88,100]

//将数组中的每个元素都开平方后乘以10 然后赋值给数组本身 然后的到一个新的数组
changeScore(scores: &scores, by: changeScore)


// MARK map
//map操作  将scores数组按照changeScore的方式来进行改变
scores.map(changeScore)





var scoreArray: [Int] = [45,60,57,88,90,100]

//定义一个判断成绩是否及格的函数
func isPassOrFail( scroe: Int ) -> String{
    return scroe >= 60 ? "Pass" : "Fail"
}

scoreArray.map(isPassOrFail)




/*
 * filter 过滤
 */

func fail (score: Int) -> Bool
{
    return score > 60
}

//将及格的分数筛选出来
scoreArray.filter(fail)


/*
 * reduce 一般用于算总数
 */

func add( _ num1:Int , _ num2:Int) -> Int{
    return num1 + num2
}

scoreArray.reduce(0, add)


let numbers = [1, 2, 3, 4]

//let addTwo: (Int, Int) -> Int = {
//    x, y in x + y
//}

func addTwo( _ x: Int , _ y : Int) -> Int{
    return x + y
}


let numberSum = numbers.reduce(0, addTwo)


//对字符串操作
func str (string: String , num: Int) -> String{
    
    return string + String(num) + " "
}

scoreArray.reduce("", str)





