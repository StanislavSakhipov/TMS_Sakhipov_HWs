//
//  InfoUserEditViewController.swift
//  HomeWork12
//
//  Created by Stanislav Sakhipov on 8/9/24.
//

import UIKit

class InfoUserEditViewController: UIViewController {
    
    var labelTag: Int?
    weak var delegate: InfoUserEditViewControllerDelagate?
    var editString: String?
    private let saveButton = UIButton()
    private let editTextField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSaveButton()
        setupEditTextField()
    }
    
    func setupSaveButton() {
        view.addSubview(saveButton)
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        saveButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        saveButton.setTitle("save", for: .normal)
        saveButton.backgroundColor = .darkGray
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
    }
    
    func setupEditTextField() {
        view.addSubview(editTextField)
        editTextField.translatesAutoresizingMaskIntoConstraints = false
        editTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        editTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        editTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        editTextField.widthAnchor.constraint(equalToConstant: 50).isActive = true
        editTextField.backgroundColor = .darkGray
        editTextField.text = editString
    }
    
    @objc func saveButtonTapped() {
        guard let text = editTextField.text, let tag = labelTag else {return}
        delegate?.updateUserInfoLabel(editText: text, tag: tag)
        dismiss(animated: true)
    }

}
