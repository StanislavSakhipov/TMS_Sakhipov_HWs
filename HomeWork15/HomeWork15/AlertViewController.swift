//
//  AlertViewController.swift
//  HomeWork15
//
//  Created by Stanislav Sakhipov on 8/27/24.
//

import UIKit

final class AlertViewController: UIViewController {

    private let alertView: UIView = {
        let alert = UIView()
        alert.backgroundColor = .white
        alert.translatesAutoresizingMaskIntoConstraints = false
        return alert
    }()
    
    private let alertTitleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Внимание!"
        titleLabel.textAlignment = .center
        titleLabel.textColor = .red
        return titleLabel
    }()
    
    private let alertTextLabel: UILabel = {
        let textLabel = UILabel()
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.numberOfLines = 0
        textLabel.text = "Данное окно закроется при нажатии на любую кнопку"
        textLabel.textColor = .black
        return textLabel
    }()
    
    private lazy var alertOkButton: UIButton = {
        let okButton = UIButton()
        okButton.translatesAutoresizingMaskIntoConstraints = false
        okButton.setTitle("OK", for: .normal)
        okButton.backgroundColor = .green
        okButton.addTarget(self, action: #selector(alertButtonTapped(_ : )), for: .touchUpInside)
        return okButton
    }()
    
    private lazy var alertCloseButton: UIButton = {
        let closeButton = UIButton()
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.setTitle("Закрыть", for: .normal)
        closeButton.backgroundColor = .red
        closeButton.addTarget(self, action: #selector(alertButtonTapped(_ : )), for: .touchUpInside)
        return closeButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(alertView)
        alertView.addSubview(alertTitleLabel)
        alertView.addSubview(alertTextLabel)
        alertView.addSubview(alertOkButton)
        alertView.addSubview(alertCloseButton)
        alertView.addBorder(color: .black, width: 0.9)
        alertView.addShadows(color: .black, radius: 10, offset: CGSize(width: 10, height: 5), opacity: 1.9)
        
        NSLayoutConstraint.activate([
            alertView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            alertView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            alertView.widthAnchor.constraint(equalToConstant: 300),
            alertView.heightAnchor.constraint(equalToConstant: 180),
            
            alertTitleLabel.topAnchor.constraint(equalTo: alertView.topAnchor, constant: 20),
            alertTitleLabel.centerXAnchor.constraint(equalTo: alertView.centerXAnchor),
            
            alertTextLabel.topAnchor.constraint(equalTo: alertTitleLabel.bottomAnchor, constant: 10),
            alertTextLabel.leadingAnchor.constraint(equalTo: alertView.leadingAnchor, constant: 30),
            alertTextLabel.trailingAnchor.constraint(equalTo: alertView.trailingAnchor, constant: -30),
            
            alertOkButton.topAnchor.constraint(equalTo: alertTextLabel.bottomAnchor, constant: 20),
            alertOkButton.leadingAnchor.constraint(equalTo: alertView.leadingAnchor, constant: 20),
            alertOkButton.widthAnchor.constraint(equalToConstant: 120),
            
            alertCloseButton.topAnchor.constraint(equalTo: alertTextLabel.bottomAnchor, constant: 20),
            alertCloseButton.trailingAnchor.constraint(equalTo: alertView.trailingAnchor, constant: -20),
            alertCloseButton.widthAnchor.constraint(equalToConstant: 120)
        ])
    }
    
    @objc func alertButtonTapped(_ sender: UIButton){
        self.dismiss(animated: true)
    }
}

extension UIView {
    
    func addBorder(color: UIColor, width: CGFloat){
        layer.borderColor = color.cgColor
        layer.borderWidth = width
    }
    
    func addShadows(color: UIColor, radius: CGFloat, offset: CGSize, opacity: Float){
        layer.shadowColor = color.cgColor
        layer.shadowRadius = radius
        layer.shadowOffset = offset
        layer.shadowOpacity = opacity
    }
}
