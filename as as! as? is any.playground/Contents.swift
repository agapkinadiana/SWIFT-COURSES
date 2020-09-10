import Foundation

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water.")
    }
}

let diana = Human(n: "Diana")
let jack = Human(n: "Jack")
let nemo = Fish(n: "Nemo")

// ----------------------------------------------------------------------------------------
let num = 12
let neighboursAny: [Any] = [diana, jack, nemo, num]
// error - bacause AnyType restrict the types that come from classes (Int is a structure)
//let neighboursAnyObject: [AnyObject] = [diana, jack, nemo, num]
// error - because we need to use one of the classes from Foundation
// let neighboursNSObject: [NSObject] = [diana, jack, nemo, num]

let number: NSNumber = 12
let word: NSString = "abc"
let arrayNSObject: [NSObject] = [number, word]
// ----------------------------------------------------------------------------------------

let neighbours = [diana, jack, nemo]

func findNemo(from animals: [Animal]) {
    for animal in animals {
        
        // check if object is of that data type
        if animal is Fish {
            print(animal.name)
            
            // cast down data type into a subclass (FORCED DOWNCAST)
            // problem: we sure that animal mathes the fish data type
            // because we checked that
            let fish = animal as! Fish
            fish.breatheUnderWater()
            
            // raise an object to its superclass type
            // its never going tp fail (UPCAST)
            let animalFish = fish as Animal
        }
    }
}

findNemo(from: neighbours)

//let fish = neighbours[1] as! Fish  // error, because jack isn't a fish....

// as? - safer way of down casting
if let fish = neighbours[1] as? Fish {
    
    // if fish isnot nil then call this method
    fish.breatheUnderWater()
} else {
    print("Casting has failed")
}

