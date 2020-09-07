import Foundation

let names = ["Anna", "Alex", "Brian", "Jack"]
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
let word = "helloworld"
let halfOpenRnge = 1..<5
let closedRange = 1...5

//for name in names {
//    print("Hello, \(name)!")
//}
//
//for (animalName, legCount) in numberOfLegs {
//    print("\(animalName)s have \(legCount) legs")
//}
//
//for letter in word {
//    print(letter)
//}
//
//for number in halfOpenRnge {
//    print(number)
//}

var now = Date().timeIntervalSince1970
let oneSecondFromNow =  now + 1

while now < oneSecondFromNow {
    now = Date().timeIntervalSince1970
    print("waiting...")
}

//let word = "helloworld1"
//let numbersRange = word.rangeOfCharacter(from: .decimalDigits)
//let hasNumbers = (numbersRange != nil)
