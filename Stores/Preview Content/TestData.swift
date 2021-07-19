//
//  TestData.swift
//  Stores
//
//  Created by Matúš Dalloš on 06.07.2021.
//

import Foundation
import UIKit

struct TestData {
    static var stores: [Poi] = {
        let url = Bundle.main.url(forResource: "pois", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let decoder = JSONDecoder()
        var stores = try! decoder.decode([Poi].self, from: data)
        
        return stores
    }()
}
