//: [Previous](@previous)

import UIKit

struct Item {
    var isEmpty: Bool
    var index: Int
}

func test() {
    
    let temp = [
        Item(isEmpty: false, index: 0),
        Item(isEmpty: true, index: 1),
        Item(isEmpty: false, index: 2),
        Item(isEmpty: false, index: 3),
        Item(isEmpty: false, index: 4),
        Item(isEmpty: true, index: 5),
        Item(isEmpty: true, index: 6),
        Item(isEmpty: false, index: 7),
        Item(isEmpty: false, index: 8),
        Item(isEmpty: true, index: 9)
    ]
    /// 按isEmpty进行数组切片
    let cc = temp.split { (item) -> Bool in
        return item.isEmpty
    }
    let res = Array(cc)
    print(res)
    print("\n")
}

test()



//: [Next](@next)



