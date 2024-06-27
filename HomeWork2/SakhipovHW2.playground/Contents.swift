import UIKit
import Foundation

// Task #2

let firstIntNumber: Int = 1
var secondIntNumber: Int = 2

let firstFloatNumber: Float = 2.34
var secondFloatNumber: Float = 3.445

let firstDoubleNumber: Double = 45.3487343
var secondDoubleNumber: Double = -873.4884474

let firstCharacter: Character = "}"
var secondCharacter: Character = "#"

let firstString: String = "Home Work #2"
var secondString: String = "45665"

let isSummer: Bool = false
var isWinter: Bool = true

print(Int.min)
print(Int.max)
print(Int8.min)
print(Int8.max)
print(Int16.min)
print(Int16.max)
print(Int32.min)
print(Int32.max)
print(UInt.min)
print(UInt.max)
print(UInt8.min)
print(UInt8.max)
print(UInt16.min)
print(UInt16.max)
print(UInt32.min)
print(UInt32.max)
print(UInt64.min)
print(UInt64.max)

print("Строчка firstString содержит \(firstString.count) символов")

// Task #3

let test1: Double = Double(firstIntNumber) + secondDoubleNumber
print(test1)

let test2: String = String(secondIntNumber)
print(test2)

let test3: Float = Float(firstDoubleNumber)
print(test3)

let test4 = Int(secondString)
print(test4)

let test5 = String(isSummer)
print(test5)

let test6 = String(firstFloatNumber) + String(secondDoubleNumber)
print(test6)

let test7 = String(secondCharacter)
print(test7)

let test8 = String(isWinter) + String(secondIntNumber) + firstString
print(test8)

// Task #4

let firstNumber = 12
let secondNumber = -400

let addition = firstNumber + secondNumber
let multiplication = firstNumber * secondNumber
let subtraction = firstNumber - secondNumber
let division = firstNumber / secondNumber

print("\(firstNumber) + \(secondNumber) = \(addition)")
print("\(firstNumber) * \(secondNumber) = \(multiplication)")
print("\(firstNumber) - \(secondNumber) = \(subtraction)")
print("\(firstNumber) / \(secondNumber) = \(division)")

// Task #5

var isNight: Bool = true

if isNight {
    print("Сейчас ночь")
}
else {
    print("Сейчас день")
}

// Task #6

let baseString: String = "TeachMeSkills"
var copyString: String = ""

for i in baseString {
    copyString.append(i)
}
print(baseString)
print(copyString)

// Task #7

let array: [Int] = [13, 2, 20, 21, 76]

for i in array {
    if i % 2 == 0{
    print("Число \(i) четное")
    }
    else{
        print("Число \(i) нечетное")
    }
}

// Task #8

let day: Int = 19
 
let firstDecade = 1...10
let secondDecade = 11...20
let thirdDecade = 21...31

switch day {
case firstDecade: print("Ваше число в первой декаде месяца")
case secondDecade: print("Ваше число во второй декаде месяца")
case thirdDecade: print("Ваше число в третьей декаде месяца")
default:
    print("Неверное число")
}

//Task #10

let range = 1...9
for firstNumberOfMultiply in range {
    for secondNumberOfMultiply in range{
        print("\(firstNumberOfMultiply) * \(secondNumberOfMultiply) = \(firstNumberOfMultiply * secondNumberOfMultiply)")
    }
    
}







