//
//  WeatherModel.swift
//  Clima
//
//  Created by Matheus Diniz on 13/02/2022.
//  Copyright © 2022 co.Matheus. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    let feels_like: Double
    
    var temperatureStirng: String {
        return  String(format: "%.1f", temperature)
    }
    
    var feelsLikeString: String {
        return String(format: "%.1f", feels_like)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    
}
