import Foundation


public class GameManger{
    
    private var score = 10
    
    //方法一
//    public static let defaultGameManger = GameManger()
//    
//    private init(){
//        
//    }
    
    //方法二
    public static let defaultGameManger = GameManger.init()
    
    
    public func addScore(number: Int) -> Int{
       return score + number
    }
}

		
