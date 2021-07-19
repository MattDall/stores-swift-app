//
//  PoiListRequest.swift
//  Stores
//
//  Created by Matúš Dalloš on 06.07.2021.
//

import Foundation

struct Api {
    func getPois(completion: @escaping ([Poi]) -> ()) {
        let url = URL(string: "https://private-93e2e9-ucapp.apiary-mock.com/pois")!
        var request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
          if let response = response {
            print(response)

            if let data = data, let body = String(data: data, encoding: .utf8) {
                let pois = try! JSONDecoder().decode([Poi].self, from: data)
                print (pois)
                DispatchQueue.main.async {
                    completion(pois)
                }
            }
          } else {
            print(error ?? "Unknown error")
          }
        }.resume()
    }
}
