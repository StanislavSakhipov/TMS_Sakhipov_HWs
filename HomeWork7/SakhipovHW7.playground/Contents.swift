import UIKit

//Создать объект “Школа” со свойствами: массив учеников, название школы, адрес (адрес -
//новый объект с координатами x, y, street name) и директор (у директора новые поля:
//experience, рейтинг. Директор наследуется от класса Person (name:surname:age)).
//
//У ученика хранить имя, фамилию, номер класса, кортеж “название предмета - оценка”. Ученик
//наследуется от Person.
//
//У ученика сделать конструктор со всеми параметрами, добавить дефолтные значения к
//некоторым из них.
//
//Написать метод для ученика, выводящий информацию о студенте в формате
//“Фамилия Имя (Класс)
//предмет: оценка
//предмет: оценка”.
//
//Написать метод для школы, который выводит информацию о школе.
//
//Уделите особое внимание выбору, что использовать: класс или структуру, var или let, private, public

class Person {
    let name: String
    let surname: String
    let age: Int
    
    init(name: String, surname: String, age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
}

class Director: Person {
    let directExpirience: Int
    let directRating: Double
    
    init(directExpirience: Int, directRating: Double, name: String, surname: String, age: Int) {
        self.directExpirience = directExpirience
        self.directRating = directRating
        super.init(name: name, surname: surname, age: age)}
}

class Student: Person {
    let classNumber: Int
    var grade: [(String, Int)]
    
    
    init(classNumber: Int, grade: [(String, Int)], name: String , surname: String , age: Int = 12) {
        self.classNumber = classNumber
        self.grade = grade
        super.init(name: name, surname: surname, age: age)
    }
    
    func studentInfo(){
        print("Фамилия: \(surname), Имя: \(name), Класс: \(classNumber), предметы: \(grade)")
   }
    
}

struct School {
    let studentList: [Student]
    let schoolName: String
    let director: Director
    let schoolAddres: SchoolAddres
    
    
//    func studentPrint() {
//        studentList.forEach {student in print(student.name)}
//        }
    
    func schoolPrint(){
        
        // let printStudentList = studentPrint()
        print("Название школы: \(schoolName), адресс школы: координаты X: \(schoolAddres.coordinateX), координаты Y: \(schoolAddres.coordinateY), улица: \(schoolAddres.streetName), директор: опыт работы: \(director.directExpirience), рейтинг: \(director.directRating), возраст: \(director.age), Имя: \(director.name), Фамилия: \(director.surname)")
    }
}


struct SchoolAddres {
    let coordinateX: Double
    let coordinateY: Double
    let streetName: String
}

let kolya = Student(classNumber: 5, grade: [("химия", 3), ("литература", 4)], name: "Koly", surname: "Iliev")
let vanya = Student(classNumber: 6, grade: [("русский", 3), ("литература", 4)], name: "Vanya", surname: "Iliev")

let directorInfo = Director(directExpirience: 15, directRating: 75.5, name: "Alexander", surname: "Bobrikov", age: 65)

let addresOfSchool = SchoolAddres(coordinateX: 34.5, coordinateY: 65.3, streetName: "Volgogradsaya 39")

let schoolInfo = School(studentList: [kolya, vanya], schoolName: "School #109", director: directorInfo, schoolAddres: addresOfSchool)
kolya.studentInfo()
vanya.studentInfo()
schoolInfo.schoolPrint()


