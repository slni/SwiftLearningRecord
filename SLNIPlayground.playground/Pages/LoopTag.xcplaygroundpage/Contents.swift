//: [Previous](@previous)

import Foundation

func test() {
    let numArr = [1, 2, 3, 4, 5, 6]
    let strArr = ["a", "b", "c", "d"]
    print("start loop")
    loop : for num in numArr {
        print(num)
        for str in strArr {
            if str == "c" && num == 3 {
                // 跳出两层循环
                break loop
            }
            print(str)
        }
    }
    print("end loop")
}

test()

//: [Next](@next)
