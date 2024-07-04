//
//  LoginViewController.swift
//  Sakhipov_HW8
//
//  Created by Stanislav Sakhipov on 6/30/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let imageBack = UIImageView()
    private let mainTitleLabel = UILabel()
    private let loginViewTitleLabel = UILabel()
    private let labelEmoji = UILabel()
    private let customLightsLabel = UILabel()
    private let customDoorLabel = UILabel()
    private let customACLabel = UILabel()
    private let customTempLabel = UILabel()
    private let lightsControl = UISegmentedControl()
    private let doorControl = UISegmentedControl()
    private let acControl = UISegmentedControl()
    private let tempLabel = UILabel()
    private var tempSlider = UISlider()
    private var tempSliderLabel = UILabel()
    private let step = 1.0
    private let alarmButton = UIButton()
    
    
    
     override func viewDidLoad() {
        super.viewDidLoad()
         setupUI()

    }
    
    private func setupUI() {
        view.addSubview(imageBack)
        view.addSubview(mainTitleLabel)
        view.addSubview(labelEmoji)
        view.addSubview(loginViewTitleLabel)
        view.addSubview(customLightsLabel)
        view.addSubview(customDoorLabel)
        view.addSubview(customACLabel)
        view.addSubview(customTempLabel)
        view.addSubview(lightsControl)
        view.addSubview(doorControl)
        view.addSubview(acControl)
        view.addSubview(tempSlider)
        view.addSubview(tempLabel)
        view.addSubview(tempSliderLabel)
        view.addSubview(alarmButton)
        
        
        mainTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        mainTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        mainTitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        mainTitleLabel.text = "Welcome, Stanislav"
        mainTitleLabel.font = .systemFont(ofSize: 30)
        mainTitleLabel.textColor = .black
        
        labelEmoji.translatesAutoresizingMaskIntoConstraints = false
        labelEmoji.topAnchor.constraint(equalTo: mainTitleLabel.bottomAnchor).isActive = true
        labelEmoji.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        labelEmoji.text = "🏡"
        
        loginViewTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        loginViewTitleLabel.topAnchor.constraint(equalTo: mainTitleLabel.bottomAnchor, constant: 50).isActive = true
        loginViewTitleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        loginViewTitleLabel.text = "Appartment control page"
        loginViewTitleLabel.font = .systemFont(ofSize: 20)
        loginViewTitleLabel.textColor = .black
        
        customLightsLabel.translatesAutoresizingMaskIntoConstraints = false
        customLightsLabel.topAnchor.constraint(equalTo: loginViewTitleLabel.bottomAnchor, constant: 50).isActive = true
        customLightsLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        customLightsLabel.text = "Lights"
        customLightsLabel.textColor = .black
        
        lightsControl.translatesAutoresizingMaskIntoConstraints = false
        lightsControl.topAnchor.constraint(equalTo: customLightsLabel.bottomAnchor, constant: 10).isActive = true
        lightsControl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        lightsControl.backgroundColor = .white
        lightsControl.insertSegment(withTitle: "On", at: 0, animated: true)
        lightsControl.insertSegment(withTitle: "Off", at: 1, animated: true)
        lightsControl.selectedSegmentIndex = 0
        
        customDoorLabel.translatesAutoresizingMaskIntoConstraints = false
        customDoorLabel.topAnchor.constraint(equalTo: lightsControl.bottomAnchor, constant: 30).isActive = true
        customDoorLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        customDoorLabel.text = "Door"
        customDoorLabel.textColor = .black
        
        doorControl.translatesAutoresizingMaskIntoConstraints = false
        doorControl.topAnchor.constraint(equalTo: customDoorLabel.bottomAnchor, constant: 10).isActive = true
        doorControl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        doorControl.backgroundColor = .white
        doorControl.insertSegment(withTitle: "Lock", at: 0, animated: true)
        doorControl.insertSegment(withTitle: "Unclock", at: 1, animated: true)
        doorControl.selectedSegmentIndex = 0
        
        customACLabel.translatesAutoresizingMaskIntoConstraints = false
        customACLabel.topAnchor.constraint(equalTo: doorControl.bottomAnchor, constant: 30).isActive = true
        customACLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        customACLabel.text = "A/C"
        customACLabel.textColor = .black
        
        acControl.translatesAutoresizingMaskIntoConstraints = false
        acControl.topAnchor.constraint(equalTo: customACLabel.bottomAnchor, constant: 10).isActive = true
        acControl.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        acControl.backgroundColor = .white
        acControl.insertSegment(withTitle: "Auto", at: 0, animated: true)
        acControl.insertSegment(withTitle: "On", at: 1, animated: true)
        acControl.insertSegment(withTitle: "Off", at: 2, animated: true)
        acControl.selectedSegmentIndex = 0
        
        tempLabel.translatesAutoresizingMaskIntoConstraints = false
        tempLabel.topAnchor.constraint(equalTo: acControl.bottomAnchor, constant: 30).isActive = true
        tempLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        tempLabel.text = "Temperature"
        tempLabel.textColor = .black
        
        tempSlider.translatesAutoresizingMaskIntoConstraints = false
        tempSlider.topAnchor.constraint(equalTo: tempLabel.bottomAnchor, constant: 10).isActive = true
        tempSlider.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        tempSlider.widthAnchor.constraint(equalToConstant: 150).isActive = true
        tempSlider.minimumValue = -30
        tempSlider.maximumValue = 30
        tempSlider.isContinuous = true
        tempSlider.tintColor = .gray
        tempSlider.maximumTrackTintColor = .darkGray
        tempSlider.value = 0
        tempSlider.addTarget(self, action: #selector(self.sliderValueChanged(_:)), for: .valueChanged)
        
        tempSliderLabel.translatesAutoresizingMaskIntoConstraints = false
        tempSliderLabel.topAnchor.constraint(equalTo: tempLabel.bottomAnchor, constant: 10).isActive = true
        tempSliderLabel.leadingAnchor.constraint(equalTo: tempSlider.trailingAnchor, constant: 10).isActive = true
        tempSliderLabel.text = "0 ℃"
       
       
        alarmButton.translatesAutoresizingMaskIntoConstraints = false
        alarmButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
        alarmButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        alarmButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        alarmButton.setTitle("Alarm", for: .normal)
        alarmButton.setTitleColor(.black, for: .normal)
        alarmButton.backgroundColor = .white
        alarmButton.addTarget(self, action: #selector(pressedButton), for: .touchUpInside)
        
        imageBack.translatesAutoresizingMaskIntoConstraints = false
        imageBack.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        imageBack.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        imageBack.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        imageBack.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//        imageBack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        imageBack.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageBack.image = UIImage(named: "Image 1")
       

    }
    @objc func sliderValueChanged(_ sender: UISlider!){
        tempSliderLabel.text = String(format: "%.0f ℃", sender.value)
        
    }
    @objc public func pressedButton(){
        print("Button is push")
    }
}
