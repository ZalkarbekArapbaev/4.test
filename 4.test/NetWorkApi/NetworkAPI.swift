//
//  NetworkAPI.swift
//  4.test
//
//  Created by zalkarbek on 23/11/22.
//

import Foundation
class NetworkAPI {
    func getSmile(completion: @escaping ([Smile]) -> ()) {
        let url = URL(string: "https://official-joke-api.appspot.com/random_ten")
        let request = URLRequest(url: url!)
        let task = URLSession.shared.dataTask(with: request) { data, _, _ in
            DispatchQueue.main.async {
                guard let data = data,
                      let response = try? JSONDecoder().decode([Smile].self, from: data) else {
                    completion([])
                            return
                }
                completion(response)
            }
        }
        task.resume()
    }
}
