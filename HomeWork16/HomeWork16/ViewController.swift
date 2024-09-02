//
//  ViewController.swift
//  HomeWork16
//
//  Created by Stanislav Sakhipov on 8/29/24.
//

import UIKit

final class ViewController: UIViewController {
    
    private let ghostRound: UIView = {
        let roundImage = UIView()
        roundImage.backgroundColor = .blue
        roundImage.translatesAutoresizingMaskIntoConstraints = false
        return roundImage
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        ghostRoundGestures()
    }
    
    private func setupUI() {
        view.addSubview(ghostRound)
        view.backgroundColor = .systemFill
        ghostRound.addCornerRadius(radius: 50)
        NSLayoutConstraint.activate([
            ghostRound.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            ghostRound.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            ghostRound.widthAnchor.constraint(equalToConstant: 100),
            ghostRound.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func ghostRoundGestures() {
        let tapGestureRecognazier = UITapGestureRecognizer(target: self, action: #selector(ghostRoundTapped))
        ghostRound.addGestureRecognizer(tapGestureRecognazier)
        
        let longPressedGestureRecognazier = UILongPressGestureRecognizer(target: self, action: #selector(ghostRoundLongPressed))
        ghostRound.addGestureRecognizer(longPressedGestureRecognazier)
    }
    
    @objc func ghostRoundTapped() {
        let randX = CGFloat.random(in: 0...(view.bounds.width - ghostRound.frame.width))
        let randY = CGFloat.random(in: 0...(view.bounds.height - ghostRound.frame.height))
        ghostRound.frame.origin = CGPoint(x: randX, y: randY)
        ghostRound.backgroundColor = [UIColor.green, UIColor.purple, UIColor.white, UIColor.red, UIColor.blue, UIColor.cyan, UIColor.orange, UIColor.magenta, UIColor.yellow].randomElement()
    }
    
    @objc func ghostRoundLongPressed() {
        UIView.animate(withDuration: 0.3) {
            self.ghostRound.center = CGPoint(x: self.view.center.x, y: self.view.center.y)
        }
    }
}

extension UIView {
    func addCornerRadius(radius: CGFloat){
        layer.cornerRadius = radius
        clipsToBounds = true
    }
}

