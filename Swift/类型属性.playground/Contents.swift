
import UIKit

class Player{
    
    var name: String
    var score = 0
    


    //类型属性
    static var maxScore = 0
    
    init(name: String) {
        self.name = name
    }
    
    func play(){
        
        let score = arc4random()%100
        self.score += Int(score);
        
        
        if self.score > Player.maxScore {
            Player.maxScore = self.score;
        }
        print("最大的数是\(Player.maxScore)")
    }
}



let plyer1 = Player(name: "swift")
plyer1.play


