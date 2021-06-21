//import UIKit
////Первое задание
////Четность функции
//func chislo (a: Int) -> () {
//    var c: Int
//    c = a % 2
//    if c != 0 {
//        print("число не четное")
//    } else{ print("число четное")}
//}
////Второе задание
////Деление на 3
//func delenieNaTri (a: Int) -> () {
//    var c: Int
//    c = a % 3
//    if c == 0 {
//        print("Число делится ")
//    } else{ print("Число не делится")}
//}
////Задание три массив возрастающих чисел
////var arr = [Int](1..)
//var myArray: [Int] = []
//for i in (1...100) {
//    myArray.append(i)
//
//}
////Задание 4. Удаление записей из массива
////Функции с возвратом булевого значения
//func chetNeChet (a: Int) -> Bool{
//    var c: Int
//    var o: Bool
//    c = a % 2
//    if c != 0 {
//        o = false
//        return o
//    } else{  o = true
//        return o}
//}
//
//func NaTri (a: Int) -> Bool{
//    var c: Int
//    var o: Bool
//    c = a % 3
//    if c == 0 {
//        o = true
//        return o
//    } else{  o = false
//        return o}
//}
//
//// Перебираем по индексу _ массив до длины массиваmyArray.enumerated
////Берём значение и проверяем через функции
////Если значение соответствует обоим условиям, берем индекс первого значения и удаляем элемент с этим индексом
//for (_, value) in myArray.enumerated() {
//    if (chetNeChet(a: value)) || (NaTri(a: value)){
//        myArray.remove(at: myArray.firstIndex(of: value)!)
//    }
//
//}
//print(myArray)
//
//
//func fibonachi(_ count: Int) -> [Double]{
//    var newArray: [Double] = []
//
//    if count == 1{          //Проверяем аргумент и саоздаем первый аргумент фисла фиобанчи 0
//        let f0: Double = 0
//        newArray.append(f0) //Добавлем его в массив
//    }
//    else if count == 2 {
//        let f0: Double = 1
//        let f1: Double = 0
//        newArray.append(f0)
//        newArray.append(f1)
//    } else {
//        let f0: Double = 1
//        let f1: Double = 0
//        newArray.append(f0)
//        newArray.append(f1)
//        var n = 2
//        while n < count + 2 {
//            let n1 = (newArray[n-1]+newArray[n-2])
//            newArray.append(n1)
//            n+=1
//        }
//    }
//return newArray
//}
//
//print(fibonachi(20))

//Задание 6
func isMultiple (_ num: Int,of divider: Int) -> Bool {
    return num % divider == 0 //Делится без отстатка на 2
}
var integ: [Int] = []

while integ.count != 10  {
    integ.append(integ.count+2)
}
//Создали массив целых чисел и вывели его
print(integ)
var p: Int
var index = 0
while index < integ.count - 1 {
    p = integ[index]
    for num in integ {
        print("num = \(num) --- p=\(p)")
        if (num != p) && isMultiple(num, of: p) {
            integ.remove(at: integ.firstIndex(of: num)!)
        }
    }
    index += 1
}
print(integ)
