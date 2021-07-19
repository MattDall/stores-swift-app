//
//  PoisService.swift
//  Stores
//
//  Created by Matúš Dalloš on 06.07.2021.
//

import Foundation

    
let url = URL(string: "https://private-93e2e9-ucapp.apiary-mock.com/pois")!
    var request = URLRequest(url: url)

let task = URLSession.shared.dataTask(with: request) { data, response, error in
  if let response = response {
    print(response)

    if let data = data, let body = String(data: data, encoding: .utf8) {
      print(body)
    }
  } else {
    print(error ?? "Unexpected error")
  }
}
