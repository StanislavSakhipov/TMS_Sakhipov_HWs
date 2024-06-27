import UIKit

// Task #1

func helloWorld() {
    print("Hello, World!")
}

// Task #1.2

func helloUser (name: String) {
    print("Hello, \(name)")
}

helloUser(name: "Stacy")

// Task #1.3

func helloUser2 (name: String) -> String {
    return "Hello! \(name)"
}

// Task #2

func sumOfString (firstString: String, secondString: String) -> Int {
    firstString.count + secondString.count
}
sumOfString(firstString: "round", secondString: "red")

// Task #3

func squareNumbers (number: Int) {
    let res: Int = number * number
    print(res)
}
squareNumbers(number: 5)

// Task #4

func additionOfNumbers (firstNumber: Int, secondNumber: Int) {
    let res = firstNumber + secondNumber
    print(res)
}

func subtractionOfNumbers (firstNumber: Int, secondNumber: Int) {
    let res = firstNumber - secondNumber
    print(res)
}

func multiplicationOfNumbers (firstNumber: Int, secondNumber: Int) {
    let res = firstNumber * secondNumber
    print(res)
}

func divisonOfNumbers (firstNumber: Int, secondNumber: Int) {
    let res = firstNumber / secondNumber
    print(res)
}

additionOfNumbers(firstNumber: 4, secondNumber: 8)
subtractionOfNumbers(firstNumber: 6, secondNumber: 18698)
multiplicationOfNumbers(firstNumber: 90, secondNumber: 5)
divisonOfNumbers(firstNumber: 4873, secondNumber: 664)

// Task #5

func roundArea (radius: Double){
    
    let pI: Double = 3.14
    let area: Double = radius * radius * pI
    print(area)
    
}

roundArea(radius: 5)

// Task #6

func night (isNight: Bool) -> String{
    if isNight {
        return "Сейчас ночь"
    } else {
        return "Сейчас день"
    }
}

night(isNight: false)

// Task #8

// Данная задача не решена, нужно будет решить проблему с диапозоном winter

func months (monthNumber: Int) -> String {
    
    let winter = 1...2
    let spring = 3...5
    let summer = 6...8
    let autumn = 9...11
    
    switch monthNumber {
    case winter: return "Зима"
    case spring: return "Весна"
    case autumn: return "Осень"
    case summer: return "Лето"
    default: return "Неверно"
    }
}
months(monthNumber: 1)

// Task #9

func factorio (number: Int){
    
    var res: Int = 1
    for i in 1...number {
        res *= i
    }
}
factorio(number: 9)

