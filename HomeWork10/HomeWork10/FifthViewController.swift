//
//  FifthViewController.swift
//  HomeWork10
//
//  Created by Stanislav Sakhipov on 7/10/24.
//

import UIKit

class FifthViewController: UIViewController {
    
    private let nameLabel = UILabel()
    var stringName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        setupLabel()
    }
    
    private func setupLabel(){
        view.addSubview(nameLabel)
        nameLabel.frame = .init(x: view.center.x, y: view.center.y , width: 100, height: 30)
        nameLabel.textColor = .black
        nameLabel.text = stringName
    }
}
