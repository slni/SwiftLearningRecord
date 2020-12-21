import UIKit

/// 绘制三角形
public class TriangleView: UIView {
    
    override public func draw(_ rect: CGRect) {
        super.draw(rect)
    
        let pathA = UIBezierPath()
        pathA.lineWidth = 2
        pathA.move(to: CGPoint(x: 10, y: 10))
        pathA.addLine(to: CGPoint(x: 100, y: 10))
        pathA.addLine(to: CGPoint(x: 100, y: 20))
        pathA.close()
        UIColor.red.set()
        pathA.stroke()
        
    }
        
}

