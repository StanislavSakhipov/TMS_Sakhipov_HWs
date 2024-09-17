import UIKit

class Person {
    let name: String
    let surname: String
    let age: Int
    var roomNumber: Apartment
    
    init(name: String, surname: String, age: Int, roomNumber: Apartment) {
        self.name = name
        self.surname = surname
        self.age = age
        self.roomNumber = roomNumber
    }
    
    deinit{
        print("Person deinit")
    }
}

class Apartment {
    let room: Int
    let rentPrice: Float
    weak var apartmentOwner: Person?
    
    init(room: Int, rentPrice: Float, apartmentOwner: Person? = nil) {
        self.room = room
        self.rentPrice = rentPrice
        self.apartmentOwner = apartmentOwner
    }
    
    deinit{
        print("Apartment deinit")
    }
}

var room10: Apartment? = Apartment(room: 10, 
                                   rentPrice: 13500.5)
var rick: Person? = Person(name: "Rickardo", 
                           surname: "Santiago",
                           age: 25,
                           roomNumber: room10!)

room10?.apartmentOwner = rick
rick?.roomNumber = room10!

rick = nil
room10 = nil

