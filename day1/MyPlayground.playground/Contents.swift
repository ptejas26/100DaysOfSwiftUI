import UIKit

var greeting = "Hello, playground"

//let test: Void? = nil
//print(test)


enum MyError: Error {
    case myErrorCase
}

func doSomething() throws {
    //return "Test"
    //throw MyError.myErrorCase
}
print(try? doSomething())


func returnsOptionalString() throws -> String? {
    return nil
}

let string = try? returnsOptionalString()

if string == nil {
    // why is string nil? Is it due to an error? Or did the function execute successfully and we just got back nil without encountering any errors?
    print("Inside")
}



let array: [Int] = [1, 2, 3, 4, 5]
label: for item in array {
    for itemNew in array {
        for anotherNewItem in array {
            if anotherNewItem == 4 {
                break label
            }
        }
    }
}
