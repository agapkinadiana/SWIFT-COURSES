import UIKit

//class Car {
//    var colour = "Red"
//}
//
//let myCar = Car()
//myCar.colour = "Blue"
//
//let yourCar = Car()
//print(yourCar.colour)


class Car {
    var colour = "Red"
    
    static let singletonCar = Car()
}

let myCar = Car.singletonCar
myCar.colour = "Blue"

let yourCar = Car.singletonCar
print(yourCar.colour)

class A {
    init() {
        Car.singletonCar.colour = "Orange"
    }
}

class B {
    init() {
        print(Car.singletonCar.colour)
    }
}

let a = A()
let b = B()
