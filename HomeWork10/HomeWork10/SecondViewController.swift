//
//  SecondViewController.swift
//  HomeWork10
//
//  Created by Stanislav Sakhipov on 7/10/24.
//

import UIKit

class SecondViewController: UIViewController {

    var stringName: String = ""
    var secondUserInfo: UserInfo!
    private let userNameLabel = UILabel()
    private let userSurnameLabel = UILabel()
    private let userAge = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupSecondViewInfoLabels()
        print(stringName)
        print(secondUserInfo.name)
    }
    
    private func setupSecondViewInfoLabels(){
        view.addSubview(userNameLabel)
        view.addSubview(userSurnameLabel)
        view.addSubview(userAge)
        userNameLabel.frame = .init(x: view.center.x, y: view.center.y, width: 100, height: 20)
        userSurnameLabel.frame = .init(x: view.center.x, y: view.center.y + 30, width: 100, height: 20)
        userAge.frame = .init(x: view.center.x, y: view.center.y + 60, width: 100, height: 20)
        userNameLabel.text = secondUserInfo.name
        userSurnameLabel.text = secondUserInfo.surname
        userAge.text = String(secondUserInfo.age)
    }
}
