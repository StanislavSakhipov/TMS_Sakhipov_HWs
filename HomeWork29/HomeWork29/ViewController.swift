//
//  ViewController.swift
//  HomeWork29
//
//  Created by Stanislav Sakhipov on 9/23/24.
//

import UIKit

final class ViewController: UIViewController {
    
    var userInfoArray: [User] = []
    let userNetwork = NetworkService()
    
    private lazy var userInfoTable: UITableView = {
        let userInfoTable = UITableView()
        userInfoTable.translatesAutoresizingMaskIntoConstraints = false
        userInfoTable.delegate = self
        userInfoTable.dataSource = self
        userInfoTable.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return userInfoTable
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        fetchUsers()
    }
    
    private func setupUI(){
        view.addSubview(userInfoTable)
        NSLayoutConstraint.activate([
            userInfoTable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            userInfoTable.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            userInfoTable.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            userInfoTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    private func fetchUsers() {
        userNetwork.loadUsers { [weak self] data in
            guard let self = self else {return}
            DispatchQueue.main.async {
                self.userInfoArray = data
                //print(userInfoArray)
                self.userInfoTable.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userInfoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = userInfoTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = userInfoArray[indexPath.row].name
        cell.contentConfiguration = content
        return cell
    }
}



