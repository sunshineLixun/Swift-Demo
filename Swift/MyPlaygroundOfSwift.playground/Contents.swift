//: Playground - noun: a place where people can play

import UIKit


var str = "Hello, world"
print(str);

var imInt: Int = 20;
var lixun: String = "ssss";

var scoreArr = [22,33,44,55,66,77,88,99];

var count = scoreArr.count;


//浮点型
let red: CGFloat = 0.2;
let green: CGFloat = 0.2;
let blue: CGFloat = 1.0;

UIColor(red: red,green: green ,blue: blue,alpha: 1);


UIColor.red;

//布尔值

let imTrue = true;

let imFalse = false;


//判断
if !imTrue{
    
    print("i am True");
    
}else if 3 + 4 == 7{
    print("3 + 4 = 7");
}


//元组
// 元组的定义：将多个不同的值组成一个数据
// 特点 ： 1.可以有任意多个值; 2.不同的值可以有不同的类型

//声明一个元组
// --第一种方式---
var point = (5, 2);  print(point);

var httpResquest = (404, 3.1415926); print(httpResquest)

// --第二种方式---
var point2 = (x: 1, y :2);

// --第三种方式--
var point1:(Int, Int, Int) = (1,1,1);
print(point1);

var httpRequest1:( Int, String, Bool) = (1, "sss", true);
print(httpRequest1);

// --第四种方式
var point3:(x: Int, y:Int) = (2,4);
print(point3.x, point3.y);


/// 获取分量的值

// --第一种获取分量的值--
let m = point.0;
print(m);

// --第二种获取分量的值--
print(point2.x, point2.y);


//元组的使用
var (x, y) = point;
x
y

x = 10;
print(x);

//解析元组
var loginResult = (true, "lixun");
var loginResult1:(Bool , String) = (true,"lixun");
var loginResult2:(x:Bool,y:String) = (true, "lixun");
var loginResult3 = (x:true, y:"lixun");

// _ 表示可以忽略数值
let (loginSuccessful, _ ) = loginResult;
if loginSuccessful{
    print("success");
}else{
    print("failed");
}


//print函数
let a = 1, b = 2, c = 3;
// separator 分隔符
print( a , b , c, separator: "----");
print( a , b , c, separator: "----", terminator: ":)");
print("xxx");



var score = 18;
var color = count <= 20 ? UIColor.red : UIColor.blue;

//swift 中 声明一个变量或者常亮 没有使其赋初值。在没有使用该变量之前（赋值之前）是不能来使用的.（比如打印）
let myColor : UIColor;

//print(myColor);
myColor = UIColor.white;



//区间运算符 1. [a,b]  写法: a...b; 2.[a,b) a..<b



/**
 *  循环
 */
// for in 循环
for index in 0 ..< count{
    var s = scoreArr[index];
    print(s);
}


for index in 1...10{
    
    
    index;
}

for index in 1..<10{
    index;
}

//其中index是常量  不能被改变

//for in 省略循环变量
for _ in 1...10{
    
}

// e.g. 计算2的10次方

var result = 1;
var base = 2;
var power = 10;

for _ in 1...power{
    result *= base;
}
result;

// for 循环 

//10.stride (through: 0, by: -1)，表示从10到0（through）,每次递减1。其他改变步长的逻辑依此类推。相当于闭区间[a,b]
//for index in 10.stride(to: 0, by: -1) 相当于开区间[a,b)

for index in stride(from: 0, through: 10, by: 1){
    index
    print("index --\(index)");
}




for index in stride(from: 10, to: 0, by: -1){
    print(index);
}


for a in stride(from: -6.28, through: 6.28, by: 0.1){
    sin(a)
}


for a in stride(from: 6.28, to: -6.28, by: -0.1){
    sin(a)
}


for i in stride(from: 0, to: scoreArr.count, by: 1){
    var arr = scoreArr[i];
    print(arr);
}


let age = 10;
if case 10...19 = age{
    print("you are strong");
}






