//
//  ViewController.swift
//  HomeWork10
//
//  Created by Stanislav Sakhipov on 7/10/24.
//

import UIKit

class StartViewController: UIViewController {
    
    private let goNextButton = UIButton()
    let stringName: String = "Hola"
    let userInfo = UserInfo(name: "Alex", surname: "Borov", age: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGoNextbutton()
        view.backgroundColor = .white
    }
    
    private func setupGoNextbutton() {
        view.addSubview(goNextButton)
        goNextButton.frame = .init(x: view.center.x - 35, y: view.center.y, width: 100, height: 100)
        goNextButton.setTitle("Go Next", for: .normal)
        goNextButton.backgroundColor = .gray
        goNextButton.addTarget(self, action: #selector(goNextButtonPressed), for: .touchUpInside)
    }
    
    @objc func goNextButtonPressed() {
    
        let secondViewController = SecondViewController()
        secondViewController.stringName = stringName
        secondViewController.secondUserInfo = userInfo
        let thirdViewController = ThirdViewController()
        thirdViewController.stringName = secondViewController.stringName
        let fourthViewController = FourthViewController()
        fourthViewController.stringName = thirdViewController.stringName
        let fifthViewController = FifthViewController()
        fifthViewController.stringName = fourthViewController.stringName
        navigationController?.pushViewController(secondViewController, animated: true)
        navigationController?.pushViewController(thirdViewController, animated: true)
        navigationController?.pushViewController(fourthViewController, animated: true)
        navigationController?.pushViewController(fifthViewController, animated: true)
        print("Pressed")
        }
    }

