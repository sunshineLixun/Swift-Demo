//: Playground - noun: a place where people can play

import UIKit

// 注意 willSet 和didSet不会再初始化阶段的时候调用

class People {
    
    
    //类型属性（静态变量/常亮）经常作为 极限值 也就是保护值
    static let height = 300
    
    var  currentHeight = 0{
        
        //newValue  将要赋值的新值
        willSet{
            
            print("将要被赋值的绝对值是\(abs(currentHeight - newValue))")
            
        }
        
        //oldValue 为修改currentHeight之前的值
        didSet{
            
            if currentHeight >= People.height {
                print("身高不能超过3米")
                currentHeight = oldValue
            }
            print("currentHeight is \(currentHeight)")
        }
    }
}

let people = People()
people.currentHeight = 180


people.currentHeight = 310


//例子:


enum ThemeMode{
    case DayMode
    case NightMode
}


class UI{
    
    
    var fontColor: UIColor!
    var backgroundColor: UIColor!
    var themeMode: ThemeMode = .DayMode{
        
        didSet{
            //themeMode已经发生了改变
          self.changeTheme(themeMode: themeMode)
        }
        
        
    }
    
    init(themeMode: ThemeMode){
        
        self.themeMode = themeMode
        
        self.changeTheme(themeMode: themeMode)
    }
    
    
    func changeTheme(themeMode: ThemeMode) {
        switch themeMode {
        case .DayMode:
            self.fontColor = UIColor.black
            self.backgroundColor =  UIColor.white
        case .NightMode:
            self.fontColor = UIColor.white
            self.backgroundColor = UIColor.black
        }
    }
}


let ui = UI(themeMode: .DayMode)

ui.fontColor
ui.backgroundColor
ui.themeMode


ui.themeMode = .NightMode
ui.fontColor
ui.backgroundColor
ui.themeMode











