//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// 可选性 (Nil 可以与其他 类型相共存)

// 整形的可选型 类型后面+？ (可能包含Nil)
var errorCode: String? = "Not Fount";

//errorCode = nil;

//let imInt = "405"

//errorCode = imInt;

print(errorCode!)

errorCode!

// 第一种方式 加! 类型转化
"errorCode" + errorCode!


//第二种方式
if let errorCode = errorCode{
    errorCode
}else{
    print("No error")
}

// 第三种方式
if errorCode != nil{
    //仍然要进行解包
    errorCode!
    
}else{
    print("No error")
}

//第四种
if let erroeCode = errorCode?.uppercased(){
    //解包成功
    errorCode?.uppercased();
    
}else{
    print("No error")
}


let message = errorCode == nil ? "No error" :errorCode!

//让message1去取errorCode的值 取不到就输出  "Not Error" 取到了就输出 "Not Fount"
let message1 = errorCode ?? "Not Error"



var error1: (errorCode: Int, errorMessage: String?) = (404, "Not Found")
error1.1 = nil;
error1;


var error2: (errorCode: Int, errorMessage: String)? = (404, "Not Found")
error2 = nil;


//隐式可选型 + !
var errorMes : String! = "Not Found"






