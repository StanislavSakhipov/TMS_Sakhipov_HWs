//
//  NetworkService.swift
//  HomeWork29
//
//  Created by Stanislav Sakhipov on 9/23/24.
//

import Foundation

class NetworkService {
    static let users = "https://jsonplaceholder.typicode.com/users"
    
    func loadUsers(completion: @escaping ([User]) -> Void) {
        guard let url = URL(string: NetworkService.users) else {return}
        let request = URLRequest(url: url)
        let dataTask = URLSession.shared.dataTask(with: request) {
            data, response, _ in
            guard let data else {return}
            let decoder = JSONDecoder()
            let users: [User] = try! decoder.decode([User].self, from: data)
            completion(users)
        }
        dataTask.resume()
    }
}
