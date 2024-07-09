//
//  MintViewController.swift
//  Sakhipov_HomeWork9
//
//  Created by Stanislav Sakhipov on 7/8/24.
//

import UIKit

class MintViewController: UIViewController {
    
    private let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setupButton()
        
    }
    
    private func setupButton(){
        
        view.addSubview(button)
    
        button.frame = .init(x: 0, y: 0, width: 100, height: 50)
        button.center = view.center
        button.backgroundColor = .white
        button.setTitle("Go next", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector( buttonNextController), for: .touchUpInside)
    }

    @objc func buttonNextController(){
        let cyanViewController = CyanViewController()
        let whiteViewController = WhiteViewController()
        navigationController?.pushViewController(cyanViewController, animated: true)
        navigationController?.pushViewController(whiteViewController, animated: true)
    }
}

