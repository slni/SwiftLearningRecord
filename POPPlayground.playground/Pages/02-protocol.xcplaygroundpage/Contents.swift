//: [Previous](@previous)

import Foundation

/*:
 
 1. 协议的命名特点: 基本是以"Type"、“able”、“Convertible”结尾，分别表示该协议
                 “可以被当做XX类型”、“具备某种能力或特性”、“能够进行改变或变换”。
 2. swift标准库: protocols 55个  structs 102个  enums 9个  classes 5个
 
 */


/*
 1. 协议的继承
 */
protocol OneProtocol {}
protocol TwoProtocol {}
protocol ThreeProtocol: OneProtocol, TwoProtocol {
    
}

/*
 2. 协议的聚合
 */
typealias ThreeP = OneProtocol & TwoProtocol

/*
 继承和聚合在使用上的区别:
 继承: 定义了一个全新的协议，我们是希望它能够“大展拳脚”得到普遍使用。
 聚合: 它并没有定义新的固定协议类型，相反，它只是定义一个临时的拥有所有聚合中协议要求组成的局部协议，
      很可能是“一次性需求”，使用协议的聚合保持了代码的简洁性、易读性，同时去除了定义不必要的新类型
      的繁琐，并且定义和使用的地方如此接近，见明知意，也被称为匿名协议聚合。
 */

//: [Next](@next)
