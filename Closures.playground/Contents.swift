import UIKit

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}

calculator(n1: 2, n2: 3, operation: add)

//closure - anonymous func

//{ (no1: Int, no2: Int) -> Int in
//    return no1 * no2
//}

//calculator(n1: 2, n2: 3, operation: {(no1, no2) in no1 * no2})

//$0 - first parameter, $1 - second...
//let result = calculator(n1: 2, n2: 3, operation: {$0 * $1})

//if closure is the last parameter
let result = calculator(n1: 2, n2: 3) {$0 * $1}

print(result)


//////////////////////////
let array = [6,2,3,4,9,1]

//func addOne(n1: Int) -> Int {
//    return n1 + 1
//}
//
//array.map(addOne)

print(array.map{$0 + 1})

let newArray = array.map{"\($0)"}
print(newArray)
