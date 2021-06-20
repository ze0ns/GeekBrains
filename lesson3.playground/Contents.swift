import UIKit

var russianCurrency: String = "Rouble"
var dollarCur: String = "Dollar"
var euro: String = "Euro"

var currency: [String] = ["Rouble","Dollar","Euro"]

enum cur_enum {
    case Rouble
    case Dollar
    case Euro
    
}
enum Direction: String {
    case Right = "right"
    case Left = "left"
  
}

print(cur_enum.Euro)

var rouble: cur_enum =  .Dollar

enum Action {
    case Walk (meters: Int)
    case Run (meters: Int, speed: Int)
    case Stop
    case Turn (direction: Direction)
    
//    enum act2 {
//        case jum
//        case fly
//    }
}

var action = Action.Run(meters: 100, speed: 5)
action = .Stop
action = .Walk(meters: 60)

//var action2 = Action.act2.fly
//action2 = .fly

switch action {
case .Stop: print("Stop")
    case .Walk(let meters) where meters < 100:
    print("Погуляли \(meters)")
        case .Walk:print("Погулка")
    case .Run(let meters, let speed): print("Мы  побегали \(meters) , со скоростью \(speed)")
case .Turn(let direction) where direction == .Left:
    print("left")
default:
    break
}


//  Структуры
struct playerChess {
    var name: String = "Олег"
    var wins: Int = 3
    
    func description(){
        print("Игрок \(name) выиграл \(wins) игр")
    }
   mutating func addWins(wins: Int){
    self.wins += wins
    }
    init(namePlayer: String, winsPlayer: Int) {
        self.name = namePlayer
        self.wins = winsPlayer
    }
}

var oleg =  playerChess(namePlayer: "Олег", winsPlayer: 2)
var max = playerChess(namePlayer: "Максим", winsPlayer: 10)
print(oleg)
print(max)

if max.wins > oleg.wins {
    print("Макс играет лучше")
    }
else {print("Олег играет лучше")}

print(max.description())

max.name = "Максимилиан"
print(max.description())

max.addWins(wins: 10 )
print(max.description())

var alex = max
print(alex.name)
alex.name = "Леха"
print(alex.name)
print(max.name)
