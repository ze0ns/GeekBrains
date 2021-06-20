//
//  lesson2.swift
//  
//
//  Created by zeons on 29.05.2021.
//

import Foundation
//function
//
//func myFirstFunction (firstValue someValue: int, Name:String, _ value: String) -> String {
//    let c: String = String (someValue) + Name + value
//    return c
//}
//
//
//myFirstFunction(firstValue: 5, another: "Hello" , "World")

func changeValues( _ a: inout Int, _ b: inout Int) -> () {
    let tmp = a
    a = b
    b = tmp
}

var y = 10
var p = 5

print(y)
print(p)
changeValues(&y, &p)

print(y)
print(p)

