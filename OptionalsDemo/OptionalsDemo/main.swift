
let myOptional: String?

myOptional = "Diana"

// let text: String = myOptional // not going to work

// 1. Force Unwrapping
let text1: String = myOptional!

// 2. Check for nil value
if myOptional != nil {
    let text2: String = myOptional!
    let text3: String = myOptional!
} else {
    print("My optional was found to be nil.")
}

// 3. Optional Binding
if let safeOptional = myOptional {
    let text4: String = safeOptional
    let text5: String = safeOptional
    print(safeOptional)
} else {
    print("My optional was found to be nil.")
}

// 4. Nil Coalescing Operator
let text6: String = myOptional ?? "default value"


struct myOptional2 {
    var property = 123
    func method() {
         print("hello!")
    }
}

let structOptional: myOptional2?

structOptional = myOptional2()

print(structOptional!.property) // not safe

// 5. Optional Chaining
print(structOptional?.property)
