import UIKit

// Task 1

enum Seasons {
    
    case winter
    case spring
    case summer
    case autumn
    
}

// Task 2 Написать функцию, которая будет принимать номер месяца (Int) и возвращать enum
// с временем года этого месяца

func seasonOfYear(numberOfMonth:Int) -> Seasons? {
    switch numberOfMonth {
    case 12, 1, 2:
        return .winter
    case 3, 4, 5:
        return .spring
    case 6, 7 ,8:
        return .summer
    case 9, 10, 11:
        return .autumn
    default :
        return nil
    }
}
seasonOfYear(numberOfMonth: 6)

// Task 3

//Написать метод, который принимает variadic parameter String?. Метод возвращает
//количество nil объектов и печатает в консоль одну строку всех объединенных не nil
//объектов.

func variadicParameter(arrayString: String?...) -> Int {
    var count: Int = 0
    var listString: [String] = []
    for element in arrayString {
        if element != nil {
            if let element {
                listString.append(element)
            }
        } else {
            count += 1
        }
    }
    print("Количество Nil объектов - \(count), Строка -  \(listString.joined(separator: ", "))")
    
    return count
}
variadicParameter(arrayString: "Misha", "Saka", nil, nil, nil, "Tina")

