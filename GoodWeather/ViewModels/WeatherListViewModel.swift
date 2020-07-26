//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by Ana Almeida on 26/07/2020.
//  Copyright © 2020 Ana Almeida. All rights reserved.
//

import Foundation

struct WeatherListViewModel {
    
    private var weatherViewModel = [WeatherViewModel]()
    
}

struct WeatherViewModel: Decodable {
    let name: String
    let currentTemperature: TemperatureViewModel
    
    //in order to get the JSONDecoder to map the json variables with our own
    private enum CodingKeys: String, CodingKey {
        case name
        case currentTemperature = "main"
    }
}

struct TemperatureViewModel: Decodable {
    
    let temperature: Double
    let temperatureMin: Double
    let temperatureMax: Double
    
    //in order to get the JSONDecoder to map the json variables with our own
    private enum CodingKeys: String, CodingKey {
        case temperature = "temp"
        case temperatureMin = "temp_min"
        case temperatureMax = "temp_max"
    }
    
}
