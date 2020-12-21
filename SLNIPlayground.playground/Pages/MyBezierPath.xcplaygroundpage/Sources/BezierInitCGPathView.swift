import UIKit

public class BezierInitCGPathView: UIView {
    public override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let rectA = CGRect(x: 10, y: 10, width: 20, height: 20)
        let cgPathA = CGPath(rect: rectA, transform: nil)
        let pathA = UIBezierPath(cgPath: cgPathA)
        pathA.lineWidth = 4
        UIColor.red.set()
        pathA.stroke()
        
        let rectB = CGRect(x: 50, y: 10, width: 20, height: 20)
        // x' = ax + cy + tx
        // y' = bx + dy + ty
        var transFormB = CGAffineTransform(a: 2, b: 0, c: 0, d: 1, tx: 0, ty: 0)
        let cgPathB = CGPath(rect: rectB, transform: &transFormB)
        let pathB = UIBezierPath(cgPath: cgPathB)
        pathB.lineWidth = 2
        UIColor.yellow.set()
        pathB.stroke()
        
        // ?? 为什么不显示
        let rectC = CGRect(x: 10, y: 70, width: 20, height: 20)
        var transFormC = CGAffineTransform(rotationAngle: (CGFloat.pi)/4)
        let cgPathC = CGPath(rect: rectC, transform: &transFormC)
        let pathC = UIBezierPath(cgPath: cgPathC)
        pathC.lineWidth = 4
        UIColor.green.set()
        pathC.stroke()
        
    }
}
