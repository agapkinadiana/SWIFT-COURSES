//
//  WeatherData.swift
//  Clima
//
//  Created by Diana Agapkina on 8/30/20.
//  Copyright © 2020 Diana Agapkina. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
}
