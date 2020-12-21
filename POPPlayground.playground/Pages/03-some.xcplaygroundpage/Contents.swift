//: [Previous](@previous)

import Foundation

// some的使用:  两种情况: 1.使用了关联类型  2.参数中有Self的协议

protocol Mergeable {
    func merge(a: Self, b: Self) -> Bool
}

protocol Mergeable01 {
    func getSelf() -> Self
}

struct Student: Mergeable {
    
    func merge(a: Student, b: Student) ->Bool {
        return false
    }
    
}

struct Person: Mergeable01 {
    func getSelf() -> Person {
        return self
    }
}

struct ClassRoom {
    var name: String
    var stu: Student
    var per: Person
}

struct ClassRoom1<T: Mergeable> {
    var stu: some Mergeable {
        return Student()
    }
    
    var stu1: T
    
    init(stu1: T) {
        self.stu1 = stu1
    }
}

//struct ClassRoom3 {
//    var stu: some Mergeable {
//        return Student()
//    }
//
//    var stu1: some Mergeable
//
//    init(stu1: some Mergeable) {
//        self.stu1 = stu1
//    }
//}
//
//struct ClassRoom2 {
//    var per: Mergeable01
//}

print("hello")


//: [Next](@next)
