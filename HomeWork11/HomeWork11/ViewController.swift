//
//  ViewController.swift
//  HomeWork11
//
//  Created by Stanislav Sakhipov on 7/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var resultLabel = UILabel()
    lazy var calculateMainStackView = UIStackView()
    lazy var firstRow = UIStackView()
    lazy var secondRow = UIStackView()
    lazy var thirdRow = UIStackView()
    lazy var fourthRow = UIStackView()
    lazy var zeroButton = UIButton()
    lazy var fifthRow = UIStackView()
    
     override func viewDidLoad() {
        super.viewDidLoad()
         view.backgroundColor = .black
         view.addSubview(resultLabel)
         view.addSubview(calculateMainStackView)
         view.addSubview(zeroButton)
         
         resultLabel.translatesAutoresizingMaskIntoConstraints = false
         calculateMainStackView.translatesAutoresizingMaskIntoConstraints = false
         zeroButton.translatesAutoresizingMaskIntoConstraints = false
         
         calculateMainStackView.axis = .vertical
         calculateMainStackView.spacing = 10
         calculateMainStackView.distribution = .fillEqually
         calculateMainStackView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
         calculateMainStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -15).isActive = true
         
         calculateMainStackView.addArrangedSubview(firstRow)
         calculateMainStackView.addArrangedSubview(secondRow)
         calculateMainStackView.addArrangedSubview(thirdRow)
         calculateMainStackView.addArrangedSubview(fourthRow)
         calculateMainStackView.addArrangedSubview(fifthRow)
         
         resultLabel.bottomAnchor.constraint(equalTo: calculateMainStackView.topAnchor, constant: -10).isActive = true
         resultLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30).isActive = true
         resultLabel.text = "0"
         resultLabel.font = .systemFont(ofSize: 100)
         resultLabel.textColor = .white
         
         zeroButton.setTitle("0", for: .normal)
         zeroButton.contentHorizontalAlignment = .left
         zeroButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 25, bottom: 0, right: 0)
         zeroButton.widthAnchor.constraint(equalToConstant: 170).isActive = true
         zeroButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
         zeroButton.backgroundColor = .darkGray
         zeroButton.layer.cornerRadius = 40
         zeroButton.titleLabel?.font = .systemFont(ofSize: 45)
         
         firstRow.axis = .horizontal
         firstRow.distribution = .fillEqually
         firstRow.spacing = 10
         firstRow.addArrangedSubview(addButton(buttonTitle: "AC", buttonColor: .lightGray, buttonTitleColor: .black))
         firstRow.addArrangedSubview(addButton(buttonTitle: "±", buttonColor: .lightGray, buttonTitleColor: .black))
         firstRow.addArrangedSubview(addButton(buttonTitle: "%", buttonColor: .lightGray, buttonTitleColor: .black))
         firstRow.addArrangedSubview(addButton(buttonTitle: "÷", buttonColor: .orange, buttonTitleColor: .white))
         
         secondRow.axis = .horizontal
         secondRow.distribution = .fillEqually
         secondRow.spacing = 10
         secondRow.addArrangedSubview(addButton(buttonTitle: "7", buttonColor: .darkGray, buttonTitleColor: .white))
         secondRow.addArrangedSubview(addButton(buttonTitle: "8", buttonColor: .darkGray, buttonTitleColor: .white))
         secondRow.addArrangedSubview(addButton(buttonTitle: "9", buttonColor: .darkGray, buttonTitleColor: .white))
         secondRow.addArrangedSubview(addButton(buttonTitle: "x", buttonColor: .orange, buttonTitleColor: .white))
         
         thirdRow.axis = .horizontal
         thirdRow.distribution = .fillEqually
         thirdRow.spacing = 10
         thirdRow.addArrangedSubview(addButton(buttonTitle: "4", buttonColor: .darkGray, buttonTitleColor: .white))
         thirdRow.addArrangedSubview(addButton(buttonTitle: "5", buttonColor: .darkGray, buttonTitleColor: .white))
         thirdRow.addArrangedSubview(addButton(buttonTitle: "6", buttonColor: .darkGray, buttonTitleColor: .white))
         thirdRow.addArrangedSubview(addButton(buttonTitle: "-", buttonColor: .orange, buttonTitleColor: .white))
         
         fourthRow.axis = .horizontal
         fourthRow.distribution = .fillEqually
         fourthRow.spacing = 10
         fourthRow.addArrangedSubview(addButton(buttonTitle: "1", buttonColor: .darkGray, buttonTitleColor: .white))
         fourthRow.addArrangedSubview(addButton(buttonTitle: "2", buttonColor: .darkGray, buttonTitleColor: .white))
         fourthRow.addArrangedSubview(addButton(buttonTitle: "3", buttonColor: .darkGray, buttonTitleColor: .white))
         fourthRow.addArrangedSubview(addButton(buttonTitle: "+", buttonColor: .orange, buttonTitleColor: .white))
         
         fifthRow.axis = .horizontal
         fifthRow.distribution = .fill
         fifthRow.spacing = 10
         fifthRow.addArrangedSubview(zeroButton)
         fifthRow.addArrangedSubview(addButton(buttonTitle: ",", buttonColor: .darkGray, buttonTitleColor: .white))
         fifthRow.addArrangedSubview(addButton(buttonTitle: "=", buttonColor: .orange, buttonTitleColor: .white))
         
    }

    func addButton(buttonTitle: String, buttonColor: UIColor, buttonTitleColor: UIColor) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(buttonTitle, for: .normal)
        button.setTitleColor(buttonTitleColor, for: .normal)
        button.backgroundColor = buttonColor
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        button.heightAnchor.constraint(equalToConstant: 80).isActive = true
        button.layer.cornerRadius = 40
        button.titleLabel?.font = .systemFont(ofSize: 40)
        return button
    }

}

