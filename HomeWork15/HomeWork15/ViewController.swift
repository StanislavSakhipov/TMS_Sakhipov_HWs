//
//  ViewController.swift
//  HomeWork15
//
//  Created by Stanislav Sakhipov on 8/27/24.
//

import UIKit

final class ViewController: UIViewController {
    
    private lazy var openAlertButton: UIButton = {
       let openButton = UIButton()
       openButton.setTitle("Вызвать окно!", for: .normal)
        openButton.setTitleColor(.red, for: .normal)
        openButton.translatesAutoresizingMaskIntoConstraints = false
        openButton.addTarget(self, action: #selector(buttonTappedForAlert(_ : )), for: .touchUpInside)
       return openButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(openAlertButton)
        NSLayoutConstraint.activate([
            openAlertButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            openAlertButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor)
        ])
    }

    @objc func buttonTappedForAlert(_ sender : UIButton) {
        let alertView = AlertViewController()
        alertView.modalPresentationStyle = .overCurrentContext
        present(alertView, animated: true)
    }
}



