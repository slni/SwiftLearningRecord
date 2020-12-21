//: [Previous](@previous)

/*:
 @inlinable
 这个关键词是可内联的声明，它来源于C语言中的inline。
 C中一般用于函数前，做内联函数，它的目的是防止当某一函数多次调用造成函数栈溢出的情况。
 因为声明为内联函数，会在编译时将该段函数调用用具体实现代替，这么做可以省去函数调用的时间。
 */
@inlinable func testInLineAbleFunc() {}

//: [Next](@next)
