//
//  MainTabBarController.swift
//  Sakhipov_HomeWork9
//
//  Created by Stanislav Sakhipov on 7/8/24.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar(){
        let mintViewController = MintViewController()
        let redViewController = RedViewController()
        let navigationController = UINavigationController(rootViewController: mintViewController)
        
        mintViewController.tabBarItem = UITabBarItem(title: "Mint View", image: .checkmark, tag: 0)
        
        redViewController.tabBarItem = UITabBarItem(title: "Red View", image: .add, tag: 1)
        
        viewControllers = [navigationController, redViewController]
    }
}
