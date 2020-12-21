//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

enum MyError: Error {
    case errorPage
}

func getPage(page: Int) throws -> String {
    if page < 0 {
        throw MyError.errorPage
    } else {
        return "\(page)"
    }
}

func test() {
    
    do {
        print("start")
        try getPage(page: 4)
        print("do other thing")
    } catch {
        print(error)
    }
    
}
test()





//: [Next](@next)
