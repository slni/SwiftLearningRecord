//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

struct Add {
    var sum: Int
    /// 这个是swift5.2的新特性
    mutating func callAsFunction(_ input: Int) -> Int {
        sum = sum + input
        return sum
    }
}


func test() {
    var aaaa = Add(sum: 5)
    // 调用callAsFunction方法
//    aaaa(10)
//    aaaa(12)
    print(aaaa.sum)
    

    
}
test()




//: [Next](@next)
