import UIKit

//Перечисления

//Статус двигателя
enum Engine: String{
    case on = "Заведен"
    case off = "Заглушен"
}
//действия с двигателем
enum actionEngine: String{
    case start
    case turnOff
}

//Статус окон
enum windows: String{
    case open = "Открыты"
    case close = "Закрыты"
}

//Загруженность кузова
enum kuzov {
    case pustKuz(empty: String)
    case pustKuz(full: String)
    case chasttKuz(kg: Double)
}

struct lightCar {
    var marka: String
    var GodVipuska: Int
    var obemKuz: kuzov
    var StDvig: Engine
    var StOkna: windows
    var obemPolnKuz: Double
    
    mutating func acEng(action: Engine){
        switch action {
        case .off:
            print(action.rawValue)
            self.StDvig = .off
        case .on:
            print(action.rawValue)
            self.StDvig = .on
        }
    }
    
    func decription(){
            print("Атомобиль \(marka)  год выпуска \(GodVipuska) .  Двигатель сейчас \(StDvig)  . Кузов \(obemKuz)")
        }

}
struct havyCar {
    var marka: String
    var GodVipuska: Int
    var obemKuz: kuzov
    var StDvig: Engine
    var StOkna: windows
    var obemPolnKuz: Double
    
    mutating func acEng(action: Engine){
        switch action {
        case .off:
            print(action.rawValue)
            self.StDvig = .off
        case .on:
            print(action.rawValue)
            self.StDvig = .on
        }
    }
    func statusEngine(){
        print(StDvig.rawValue)
    }
    func decription(){
            print("Атомобиль \(marka)  год выпуска \(GodVipuska) .  Двигатель сейчас \(StDvig)  . Кузов \(obemKuz)")
        }

}

var car1 = lightCar(marka: "BMV", GodVipuska: 2020, obemKuz:.pustKuz(empty: "Кузов полный") , StDvig:.off, StOkna: .close, obemPolnKuz: 200)

print(car1)
