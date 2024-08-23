//
//  ViewController.swift
//  HomeWork13
//
//  Created by Stanislav Sakhipov on 8/7/24.
//

import UIKit

final class ViewController: UIViewController {
    
    private let arrayData = Array(1...10)
    private let programmingData = ["C++", "Swift", "Kotlin", "Pascal", "C", "Python", "Objectiv-C", "Java", "JavaScript", "GO"]
    
    private let tableView = UITableView()
    private let viewCellIdentifier = "viewCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    func setupTableView(){
        view.addSubview(tableView)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: viewCellIdentifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: viewCellIdentifier, for: indexPath)
        var content = cell.defaultContentConfiguration()
        if indexPath.row < arrayData.count {
            content.text = "Текущий индекс \(indexPath.row)"
            content.secondaryText = "Текущая секция \(indexPath.section)"}
        else {
            let index = indexPath.row - arrayData.count
            content.text = programmingData[index]
        }
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayData.count + programmingData.count
    }
}
