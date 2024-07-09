//
//  RedViewController.swift
//  Sakhipov_HomeWork9
//
//  Created by Stanislav Sakhipov on 7/8/24.
//

import UIKit

class RedViewController: UIViewController {
    
    private let redViewCenterlabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupRedLabel()
        view.backgroundColor = .systemRed
    }
    
    private func setupRedLabel(){
        view.addSubview(redViewCenterlabel)
        redViewCenterlabel.frame = .init(x: 0, y: 0, width: 130, height: 50)
        redViewCenterlabel.center = view.center
        redViewCenterlabel.text = "This is red view"
        redViewCenterlabel.textColor = .black
    }
}
