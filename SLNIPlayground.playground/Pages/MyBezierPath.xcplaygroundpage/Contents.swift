//: [Previous](@previous)

import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        
        let viewA = LineView()
        viewA.translatesAutoresizingMaskIntoConstraints = false
        viewA.backgroundColor = UIColor.white
        self.view.addSubview(viewA)
        NSLayoutConstraint.activate([
            viewA.topAnchor.constraint(equalTo: view.topAnchor),
            viewA.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            viewA.rightAnchor.constraint(equalTo: view.rightAnchor),
            viewA.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let viewB = TriangleView()
        viewB.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(viewB)
        NSLayoutConstraint.activate([
            viewB.topAnchor.constraint(equalTo: viewA.bottomAnchor),
            viewB.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            viewB.rightAnchor.constraint(equalTo: view.rightAnchor),
            viewB.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        let viewC = BezierInitView()
        viewC.backgroundColor = UIColor.white
        viewC.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(viewC)
        NSLayoutConstraint.activate([
            viewC.topAnchor.constraint(equalTo: viewB.bottomAnchor),
            viewC.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            viewC.rightAnchor.constraint(equalTo: view.rightAnchor),
            viewC.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        let viewD = BezierInitCGPathView()
        viewD.backgroundColor = UIColor.black
        viewD.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(viewD)
        NSLayoutConstraint.activate([
            viewD.topAnchor.constraint(equalTo: viewC.bottomAnchor),
            viewD.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            viewD.rightAnchor.constraint(equalTo: view.rightAnchor),
            viewD.heightAnchor.constraint(equalToConstant: 200)
        ])

    }

}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
//: [Next](@next)
