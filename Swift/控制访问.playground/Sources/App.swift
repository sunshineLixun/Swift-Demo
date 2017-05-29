import Foundation


// 现在的访问权限则依次为：open，public，internal，fileprivate，private。



/*
 在swift 3中，新增加了一个 fileprivate来显式的表明，这个元素的访问权限为文件内私有。过去的private对应现在的fileprivate。现在的private则是真正的私有，离开了这个类或者结构体的作用域外面就无法访问。
 */




// 用public声明的类 在别的模块不能被继承,只能被访问 

// open声明后可以被继承 

//在同一个模块
open class App{
    
    open var name : String{
        return "Swift"
    }
    
    
    public var age: Int{
        return 3
    }
    
    
    //能被别的模块重写
    open func foo(){}
    
    //不能被别的模块重写 只能访问
    public func bar() {}
}



class A : App{
    
    override var name: String{
        return "swift"
    }
    
    
    override var age: Int{
        return 4
    }
    
}
