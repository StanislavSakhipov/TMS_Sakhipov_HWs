//
//  ViewController.swift
//  HomeWork12
//
//  Created by Stanislav Sakhipov on 8/7/24.
//

import UIKit

protocol InfoUserEditViewControllerDelagate: AnyObject {
    func updateUserInfoLabel(editText: String, tag: Int)
}

class InfoUserViewController: UIViewController {
    
    lazy var userNameLabel = UILabel()
    lazy var userSurnameLabel = UILabel()
    lazy var userAgeLabel = UILabel()
    lazy var userGenderLabel = UILabel()
    lazy var userBirthdayLabel = UILabel()
    private let userNameEditButton = UIButton()
    private let userSurnameEditButton = UIButton()
    private let userAgeEditButton = UIButton()
    private let userGenderEditButton = UIButton()
    private let userBirthdayEditButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUserNamelabel()
        setupUserSurnamelabel()
        setupUserNameEditButton()
        setupUserSurnameEditButton()
        setupUserAgelabel()
        setupUserGenderlabel()
        setupUserBitrhdaylabel()
        setupUserAgeEditButton()
        setupUserGendereEditButton()
        setupUserBirthdayEditButton()
    }
    
    func setupUserNamelabel() {
        view.addSubview(userNameLabel)
        userNameLabel.tag = 1
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        userNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        //userNamelabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        userNameLabel.text = "Введите имя пользователя"
    }
    
    func setupUserSurnamelabel() {
        view.addSubview(userSurnameLabel)
        userSurnameLabel.tag = 2
        userSurnameLabel.translatesAutoresizingMaskIntoConstraints = false
        userSurnameLabel.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 30).isActive = true
        userSurnameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        //userSurnamelabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        userSurnameLabel.text = "Введите фамилию пользователя"
    }
    
    func setupUserAgelabel() {
        view.addSubview(userAgeLabel)
        userAgeLabel.tag = 3
        userAgeLabel.translatesAutoresizingMaskIntoConstraints = false
        userAgeLabel.topAnchor.constraint(equalTo: userSurnameLabel.bottomAnchor, constant: 30).isActive = true
        userAgeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        //userSurnamelabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        userAgeLabel.text = "Введите возраст пользователя"
    }
    
    func setupUserGenderlabel() {
        view.addSubview(userGenderLabel)
        userGenderLabel.tag = 4
        userGenderLabel.translatesAutoresizingMaskIntoConstraints = false
        userGenderLabel.topAnchor.constraint(equalTo: userAgeLabel.bottomAnchor, constant: 30).isActive = true
        userGenderLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        //userSurnamelabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        userGenderLabel.text = "Введите пол пользователя"
    }
    
    func setupUserBitrhdaylabel() {
        view.addSubview(userBirthdayLabel)
        userBirthdayLabel.tag = 5
        userBirthdayLabel.translatesAutoresizingMaskIntoConstraints = false
        userBirthdayLabel.topAnchor.constraint(equalTo: userGenderLabel.bottomAnchor, constant: 30).isActive = true
        userBirthdayLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        //userSurnamelabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
    userBirthdayLabel.text = "Введите дату рождения пользователя"
    }
    
    func setupUserNameEditButton() {
        view.addSubview(userNameEditButton)
        userNameEditButton.translatesAutoresizingMaskIntoConstraints = false
        userNameEditButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        userNameEditButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        userNameEditButton.setImage(UIImage(systemName: "pencil"), for: .normal)
        userNameEditButton.addTarget(self, action: #selector(editButtonTapped(_ :) ), for: .touchUpInside)
    }
    
    func setupUserSurnameEditButton() {
        view.addSubview(userSurnameEditButton)
        userSurnameEditButton.translatesAutoresizingMaskIntoConstraints = false
        userSurnameEditButton.topAnchor.constraint(equalTo: userNameEditButton.bottomAnchor, constant: 30).isActive = true
        userSurnameEditButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        userSurnameEditButton.setImage(UIImage(systemName: "pencil"), for: .normal)
        userSurnameEditButton.addTarget(self, action: #selector(editButtonTapped(_ : )), for: .touchUpInside)
    }
    
    func setupUserAgeEditButton() {
        view.addSubview(userAgeEditButton)
        userAgeEditButton.translatesAutoresizingMaskIntoConstraints = false
        userAgeEditButton.topAnchor.constraint(equalTo: userSurnameEditButton.bottomAnchor, constant: 30).isActive = true
        userAgeEditButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        userAgeEditButton.setImage(UIImage(systemName: "pencil"), for: .normal)
        userAgeEditButton.addTarget(self, action: #selector(editButtonTapped(_ : )), for: .touchUpInside)
    }
    
    func setupUserGendereEditButton() {
        view.addSubview(userGenderEditButton)
        userGenderEditButton.translatesAutoresizingMaskIntoConstraints = false
        userGenderEditButton.topAnchor.constraint(equalTo: userAgeEditButton.bottomAnchor, constant: 30).isActive = true
        userGenderEditButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        userGenderEditButton.setImage(UIImage(systemName: "pencil"), for: .normal)
        userGenderEditButton.addTarget(self, action: #selector(editButtonTapped(_ : )), for: .touchUpInside)
    }
    
    func setupUserBirthdayEditButton() {
        view.addSubview(userBirthdayEditButton)
        userBirthdayEditButton.translatesAutoresizingMaskIntoConstraints = false
        userBirthdayEditButton.topAnchor.constraint(equalTo: userGenderEditButton.bottomAnchor, constant: 30).isActive = true
        userBirthdayEditButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        userBirthdayEditButton.setImage(UIImage(systemName: "pencil"), for: .normal)
        userBirthdayEditButton.addTarget(self, action: #selector(editButtonTapped(_ : )), for: .touchUpInside)
    }
    
    @objc func editButtonTapped(_ sender: UIButton) {
        
        var label: UILabel?
        switch sender {
        case userNameEditButton:
            label = userNameLabel
        case userSurnameEditButton:
            label = userSurnameLabel
        case userAgeEditButton:
            label = userAgeLabel
        case userGenderEditButton:
            label = userGenderLabel
        case userBirthdayEditButton:
            label = userBirthdayLabel
        default: break
        }
        let infoUserEditViewController = InfoUserEditViewController()
        guard let selectLabel = label else {return}
        infoUserEditViewController.editString = selectLabel.text
        infoUserEditViewController.labelTag = selectLabel.tag
        infoUserEditViewController.delegate = self
        present(infoUserEditViewController, animated: true)
    }
    
}

extension InfoUserViewController: InfoUserEditViewControllerDelagate {
    func updateUserInfoLabel(editText: String, tag: Int) {
        switch tag {
        case userNameLabel.tag:
            userNameLabel.text = editText
        case userSurnameLabel.tag:
            userSurnameLabel.text = editText
        case userAgeLabel.tag:
            userAgeLabel.text = editText
        case userGenderLabel.tag:
            userGenderLabel.text = editText
        case userBirthdayLabel.tag:
            userBirthdayLabel.text = editText
        default: break
        }
    }
    
}
