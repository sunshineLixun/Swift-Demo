//: Playground - noun: a place where people can play

import UIKit


//  public: 可以被模块外访问
//  private: 可以被本文件访问
//  internal: 可以被本模块访问



// 用public声明的类 在别的模块不能被继承,只能被访问 //open声明后可以被继承 属性同理
class C : App{
    
    override var name: String{
        return "Swift"
    }
    
    
    override func foo() {}
    
}




open class E : App{
    // 这个方法override是一个open的方法，则也需要表明访问权限
   open  override  func foo() {
        
    }
    
}



open class D : App{
    // 也可以显式的指出这个方法不能在被override
    public final override func foo() {
        
    }
}





