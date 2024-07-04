//
//  ViewController.swift
//  Sakhipov_HW8
//
//  Created by Stanislav Sakhipov on 6/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let titleLabel = UILabel()
    private let userNameLabel = UILabel()
    private let userNameTextField = UITextField()
    private let userPasswordLabel = UILabel()
    private let userPasswordTextField = UITextField()
    private let loginButton = UIButton()
    private let regButton = UIButton()
    private let imageBack = UIImageView()
    private let backGroundImage = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            setupUi()
        // view.backgroundColor = .blue
    }

    private func setupUi() {
        view.addSubview(imageBack)
        view.addSubview(titleLabel)
        view.addSubview(userNameLabel)
        view.addSubview(userNameTextField)
        view.addSubview(userPasswordLabel)
        view.addSubview(userPasswordTextField)
        view.addSubview(loginButton)
        view.addSubview(regButton)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            .isActive = true
        //        titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
//        titleLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        titleLabel.text = "My Home Control"
        titleLabel.font = .systemFont(ofSize: 30)
        titleLabel.textColor = .white
        
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        userNameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
        userNameLabel.text = "Username"
        userNameLabel.textColor = .white
        
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        userNameTextField.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 10).isActive = true
        userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        userNameTextField.placeholder = "Please enter user name"
        userNameTextField.backgroundColor = .white
        
        userPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        userPasswordLabel.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 10).isActive = true
        userPasswordLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
                userPasswordLabel.text = "Password"
        userPasswordLabel.textColor = .white
        
        userPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        userPasswordTextField.heightAnchor.constraint(equalToConstant: 35).isActive = true
        userPasswordTextField.topAnchor.constraint(equalTo: userPasswordLabel.bottomAnchor, constant: 10).isActive = true
        userPasswordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        userPasswordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        userPasswordTextField.isSecureTextEntry = true

        userPasswordTextField.placeholder = "Please enter password"
        userPasswordTextField.backgroundColor = .white
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: userPasswordTextField.bottomAnchor, constant: 50).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        loginButton.setTitle("Log in", for: .normal)
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.backgroundColor = .white
        loginButton.addTarget(self, action: #selector(pressedButton), for: .touchUpInside)
        
        
        regButton.translatesAutoresizingMaskIntoConstraints = false
        regButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 350).isActive = true
        regButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        regButton.setTitle("Register", for: .normal)
        regButton.setTitleColor(.white, for: .normal)
        regButton.addTarget(self, action: #selector(pressedButton), for: .touchUpInside)
        
        imageBack.translatesAutoresizingMaskIntoConstraints = false
        
        // Здесь я попытался поиграть с растягиванием заднего фона, пока оставил по центру без привязки, чтобы не сужать ее сильно 
        
        imageBack.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageBack.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageBack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageBack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageBack.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageBack.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        imageBack.image = UIImage(named: "images-4")
    }
    
    @objc public func pressedButton(){
        print("Button is push")
    }
}


