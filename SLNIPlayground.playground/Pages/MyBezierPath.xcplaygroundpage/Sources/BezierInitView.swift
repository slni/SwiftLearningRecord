import UIKit

/*
 public convenience init(rect: CGRect)

 public convenience init(ovalIn rect: CGRect)

 public convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat) // rounds all corners with the same horizontal and vertical radius

 public convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii: CGSize)

 public convenience init(arcCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)

 public convenience init(cgPath CGPath: CGPath)
 */

public class BezierInitView: UIView {
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        // 矩形
        let rectA = CGRect(x: 10, y: 10, width: 20, height: 20)
        let pathA = UIBezierPath(rect: rectA)
        pathA.lineWidth = 1
        UIColor.red.set()
        pathA.stroke()
        // 圆, 椭圆
        let rectB = CGRect(x: 40, y: 10, width: 80, height: 30)
        let pathB = UIBezierPath(ovalIn: rectB)
        pathB.lineWidth = 3
        UIColor.yellow.set()
        pathB.stroke()
        // 带有圆角的矩形
        let rectC = CGRect(x: 10, y: 60, width: 30, height: 60)
        let pathC = UIBezierPath(roundedRect: rectC, cornerRadius: 8)
        pathC.lineWidth = 2
        UIColor.green.set()
        pathC.stroke()
        // 部分带圆角的矩形
        let rectD = CGRect(x: 70, y: 60, width: 30, height: 60)
        let sizeD = CGSize(width: 10, height: 20)
        let pathD = UIBezierPath(roundedRect: rectD,
                                 byRoundingCorners: UIRectCorner(arrayLiteral: .topLeft, .topRight),
                                 cornerRadii: sizeD)
        pathD.lineWidth = 2
        UIColor.red.set()
        pathD.stroke()
        
        // 绘画圆弧 clockwise:顺时针方向   3点钟方向 : Angle = 0
        let pathE = UIBezierPath(arcCenter: CGPoint(x: 200, y: 100),
                                 radius: 50,
                                 startAngle: 0, endAngle: CGFloat.pi/2,
                                 clockwise: true)
        pathE.lineWidth = 6
        UIColor.red.set()
        pathE.stroke()
        
        
    }
}


