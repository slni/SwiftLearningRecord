//: [Previous](@previous)

/*:
 public protocol RawRepresentable {
 
     associatedtype RawValue
     init?(rawValue: Self.RawValue)
     var rawValue: Self.RawValue { get }
 }
 
 The `RawRepresentable` protocol is seen mainly in two categories of types:
 enumerations with raw value types and option sets. (具有原始值类型的枚举 和 选项集)
 */


/// 1: Enumerations with Raw Values(具有原始类型的枚举)
enum Counter: Int {
    case one = 1, two, three
}
print(Counter.two.rawValue)
for i in 1...3 {
    print(Counter(rawValue: i)!)
}


/// 2: Option Sets(选项集)
struct Directions: OptionSet {
    let rawValue: UInt8
    
    static let up    = Directions(rawValue: 1 << 0)
    static let down  = Directions(rawValue: 1 << 1)
    static let left  = Directions(rawValue: 1 << 2)
    static let right = Directions(rawValue: 1 << 3)
}

print(Directions.up.rawValue)     // Prints "1"
print(Directions.down.rawValue)   // Prints "2"
print(Directions.left.rawValue)   // Prints "4"
print(Directions.right.rawValue)  // Prints "8"

let allowedMoves: Directions = [.up, .down, .left]
print(allowedMoves.rawValue) // Prints "7"

print(allowedMoves.contains(.left))  // true
print(allowedMoves.contains(.right)) // false

print(allowedMoves.rawValue & Directions.left.rawValue) // Prints "4"
print(allowedMoves.rawValue & Directions.right.rawValue) // Prints "0"

//: [Next](@next)

