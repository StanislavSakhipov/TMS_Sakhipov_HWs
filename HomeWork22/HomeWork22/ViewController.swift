//
//  ViewController.swift
//  HomeWork22
//
//  Created by Stanislav Sakhipov on 9/4/24.
//

import UIKit

final class ViewController: UIViewController {
    
    enum Config {
        static let topSpacing: CGFloat = 30
        static let widthConstant: CGFloat = 250
        static let heightConstant: CGFloat = 30
    }
    
    private let cities: [String] = ["Москва", "Абу-Даби", "Киев", "Париж", "Минск"]
    
    private let citiesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 20)
        label.text = "Город:"
        label.textColor = .black
        return label
    }()
    
    private lazy var goingAlertButton: UIButton = {
        let alertButton = UIButton()
        alertButton.translatesAutoresizingMaskIntoConstraints = false
        alertButton.setTitle("Показать сообщение", for: .normal)
        alertButton.backgroundColor = .red
        alertButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        return alertButton
    }()
    
    private lazy var citiesPickerView: UIPickerView = {
        let citiesPicker = UIPickerView()
        citiesPicker.translatesAutoresizingMaskIntoConstraints = false
        citiesPicker.delegate = self
        citiesPicker.dataSource = self
        return citiesPicker
    }()
    
    private lazy var loadImageButton: UIButton = {
        let imageButton = UIButton()
        imageButton.translatesAutoresizingMaskIntoConstraints = false
        imageButton.setTitle("Загрузить изображение", for: .normal)
        imageButton.backgroundColor = .red
        imageButton.addTarget(self, action: #selector(loadButtonTapped), for: .touchUpInside)
        return imageButton
    }()
    
    private var image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.backgroundColor = .clear
        return image
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(citiesPickerView)
        view.addSubview(citiesLabel)
        view.addSubview(goingAlertButton)
        view.addSubview(loadImageButton)
        view.addSubview(image)
        
        NSLayoutConstraint.activate([
            citiesPickerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: Config.topSpacing),
            citiesPickerView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            citiesLabel.topAnchor.constraint(equalTo: citiesPickerView.bottomAnchor, constant: Config.topSpacing),
            citiesLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            citiesLabel.widthAnchor.constraint(equalToConstant: Config.widthConstant),
            citiesLabel.heightAnchor.constraint(equalToConstant: Config.heightConstant),
            
            goingAlertButton.topAnchor.constraint(equalTo: citiesLabel.bottomAnchor, constant: Config.topSpacing),
            goingAlertButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            goingAlertButton.widthAnchor.constraint(equalToConstant: Config.widthConstant),
            goingAlertButton.heightAnchor.constraint(equalToConstant: Config.heightConstant),
            
            loadImageButton.topAnchor.constraint(equalTo: goingAlertButton.bottomAnchor, constant: Config.topSpacing),
            loadImageButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            loadImageButton.widthAnchor.constraint(equalToConstant: Config.widthConstant),
            loadImageButton.heightAnchor.constraint(equalToConstant: Config.heightConstant),
            
            image.topAnchor.constraint(equalTo: loadImageButton.bottomAnchor, constant: Config.topSpacing),
            image.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            image.widthAnchor.constraint(equalToConstant: Config.widthConstant),
            image.heightAnchor.constraint(equalToConstant: Config.heightConstant * 10)
        ])

    }
    
    @objc private func showAlert() {
        
        let alert = UIAlertController(title: "Важное сообщение", message: "Спасибо, что выбрали наше приложение!", preferredStyle: .alert)
        
        let okAlertAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.showOkAlert()
        }
        alert.addAction(okAlertAction)
        
        let cancelAlertAction = UIAlertAction(title: "Отмена", style: .destructive)
        alert.addAction(cancelAlertAction)
        present(alert, animated: true)
    }
    
    private func showOkAlert() {
        let okAlert = UIAlertController(title: "Спасибо!", message: nil, preferredStyle: .alert)
        
        let okAlertAction = UIAlertAction(title: "OK", style: .default)
        okAlert.addAction(okAlertAction)
        present(okAlert, animated: true)
    }
    
    @objc func loadButtonTapped() {
            let pickerController = UIImagePickerController()
            pickerController.sourceType = .photoLibrary
            pickerController.delegate = self
            present(pickerController, animated: true)
    }
    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let citiesName = "Город: \(cities[row])"
        citiesLabel.text = citiesName
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectImage = info[.originalImage] as? UIImage {
            image.image = selectImage
        }
        dismiss(animated: true)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
}

