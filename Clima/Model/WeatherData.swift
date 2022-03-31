//
//  WeatherData.swift
//  Clima
//
//  Created by Matheus Diniz on 13/02/2022.
//  Copyright © 2022 co.Matheus. All rights reserved.
//

import Foundation


struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feels_like: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
