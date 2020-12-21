import UIKit

/// 绘制线条
public class LineView: UIView {
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
        // pathA
        let pathA = UIBezierPath()
        pathA.lineWidth = 2
        pathA.move(to: CGPoint(x: 10, y: 10))
        pathA.addLine(to: CGPoint(x: 10, y: 30))
        UIColor.red.set()
        pathA.stroke()
        
        // pathB
        let pathB = UIBezierPath()
        pathB.lineWidth = 1
        pathB.move(to: CGPoint(x: 20, y: 10))
        pathB.addLine(to: CGPoint(x: 20, y: 30))
        
        pathB.move(to: CGPoint(x: 30, y: 10))
        pathB.addLine(to: CGPoint(x: 30, y: 30))
        pathB.addLine(to: CGPoint(x: 100, y: 30))
        
        UIColor.blue.set()
        pathB.stroke()
    
    }
    
}
