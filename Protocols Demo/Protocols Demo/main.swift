
protocol CanFly {
    func fly()
}

extension CanFly {
     func fly() {
         print("The object takes off into the air.")
     }
}

class Bird {
    func fly() {
        print("The bird takes off into the air.")
    }
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
    
//    func fly() {
//        print("The bird flaps its wings and lifts off into the sky")
//    }
}

class Eagle: Bird, CanFly {
    
//    func fly() {
//        print("The eagle flaps its wings and lifts off into the sky")
//    }
    
    func soar() {
        print("The eagle glides in the air using air currents")
    }
}

class Penguin: Bird {
    
    func swim() {
        print("The penguin paddles through the water")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
//    func fly() {
//        print("The airplane uses its engine to lift off into the air ")
//    }
}

let myEagle = Eagle()
myEagle.fly()
//myEagle.layEgg()
//myEagle.soar()

let myPenguin = Penguin()
//myPenguin.layEgg()
//myPenguin.swim()
//myPenguin.fly()       //but penguins can't actually fly :(

let myPlane = Airplane()
//myPlane.layEgg()      //makes absolutely zero sense

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
