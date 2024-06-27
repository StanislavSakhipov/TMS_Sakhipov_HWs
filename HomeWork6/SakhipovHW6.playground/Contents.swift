import UIKit
import Foundation

//Создайте два массива. Первый от 0 до 14, второй от 14 до 30. Объедините их в один
//массив.
//Создать функцию, которая принимает массив int. Возвести все Int в квадрат.
//Возвратить новый массив.
//Создать функцию, которая принимает массив int. Возвратить новый массив с только
//четными элементами.
//Написать 3 примера с использованием .map
//Написать 2 примера с использованием .filter
//Написать 2 примера с использованием .compactMap
//Написать 2 примера с .sort
//Написать 2 примера с .sorted

// Task #1

let firstArray = [Int](0...13)
let secondArray = [Int](14...30)
let finalArray = firstArray + secondArray

// Task #2

func squareArray(array:[Int]) -> [Int] {
    var finalArray = [Int]()
    for element in array {
        var result = element * element
        finalArray.append(result)
    }
    return finalArray
}
squareArray(array: [1,5,7])

// Task #3

func evenArray(array:[Int]) -> [Int] {
    var finalArray = [Int]()
    for element in array {
        if element % 2 == 0 {
            finalArray.append(element)
        }
    }
    return finalArray
}
evenArray(array: [1, 5, 4, 8])

// Task map() example

let squareArray = [2, 5, 7]
let finalSquarelArray = squareArray.map{ $0 * $0 }
let finalArray2 = squareArray.map{ $0 + 2 }
let finalSquareArray3 = squareArray.map{ ($0 * $0) + 5 }

// Task filter()
let evenArray = [3, 7, 8, 16]
let finalEvenArray = evenArray.filter{ $0 % 2 == 0}

let filterTestArray = [50, 190, 0 , 1]
let filteredArray = filterTestArray.filter{ $0 >= 10 }

// Task compactMap()
let numbersArray = [6, 7, nil, nil, -188]
let compactArray = numbersArray.compactMap{ $0 }

// Task sorted()
let numbers = [4, -90, 1000, 1]
let sortNumbers = numbers.sorted()

let strings = ["June","August","December"]
let sortStrings = strings.sorted{ $0.count > $1.count }




