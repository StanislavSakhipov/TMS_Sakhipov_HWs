//
//  ViewController.swift
//  HomeWork17
//
//  Created by Stanislav Sakhipov on 9/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    enum Config {
        
    }
    
    
    private let goingRound: UIView = {
        let round = UIView()
        
        return round
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension UIView {
    func addCornerRadius(radius: CGFloat){
        layer.cornerRadius = radius
        clipsToBounds = true
    }
}

