//
//  ViewController.swift
//  HomeWork18
//
//  Created by Stanislav Sakhipov on 9/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    enum Config {
        static let bottomSpacing: CGFloat = 100
        static let beyoundSpacing: CGFloat = 20
        static let widhtConstant: CGFloat = 150
    }
    
    private var textFieldBottomConstraint: NSLayoutConstraint?
    
    private let titleLabel :UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Здесь будет ваш введенный текст:"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .gray
        textField.placeholder = "Введите текст"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private let saveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.tintColor = .black
        button.setTitle("Сохранить", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        notificationVision()
        hideGesture()
    }
    
    private func setupUI(){
        view.addSubview(titleLabel)
        view.addSubview(textField)
        textFieldBottomConstraint = textField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -Config.bottomSpacing)
        textFieldBottomConstraint?.isActive = true
        view.addSubview(saveButton)
        NSLayoutConstraint.activate([
            
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.widthAnchor.constraint(equalToConstant: Config.widhtConstant),
            
            titleLabel.bottomAnchor.constraint(equalTo: textField.topAnchor, constant: -Config.beyoundSpacing),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            saveButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: Config.beyoundSpacing),
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        saveButton.addTarget(self, action: #selector(saveButtonDidTapped), for: .touchUpInside)
    }
    
    private func notificationVision(){
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(onNotification(notification: )),
            name: Notification.Name("com.user.transfer.string"),
            object: nil)
        
        NotificationCenter.default.addObserver (
            self,
            selector: #selector (keyboardHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil)
        
        NotificationCenter.default.addObserver (
            self,
            selector: #selector (keyboardShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil)
    }
    
    @objc func onNotification(notification: Notification) {
        if let text = notification.object as? String {
            titleLabel.text = text
        }
    }
    
    @objc func saveButtonDidTapped() {
        NotificationCenter.default.post(
            name: Notification.Name("com.user.transfer.string"),
            object: textField.text!
        )
        textField.text = ""
        view.endEditing(true)
    }
    
    @objc func keyboardShow(notification: Notification) {
        guard let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {return}
        textFieldBottomConstraint?.isActive = false
        let keyboardHeight = keyboardFrame.height
        textFieldBottomConstraint = textField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -Config.bottomSpacing - keyboardHeight)
        textFieldBottomConstraint?.isActive = true
        view.layoutIfNeeded()
    }
    
    @objc func keyboardHide(notification: Notification) {
        textFieldBottomConstraint?.isActive = false
        textFieldBottomConstraint = textField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -Config.bottomSpacing)
        textFieldBottomConstraint?.isActive = true
        view.layoutIfNeeded()
    }
    
    private func hideGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
