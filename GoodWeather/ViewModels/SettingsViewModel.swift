//
//  SettingsViewModel.swift
//  GoodWeather
//
//  Created by Ana Almeida on 26/07/2020.
//  Copyright © 2020 Ana Almeida. All rights reserved.
//

import Foundation

enum Unit: String, CaseIterable {
    case celsius = "metric"
    case fahrenheit = "celsius"
}

extension Unit {
    var displayName: String {
        get {
            switch self {
            case .celsius:
                return "Celsius"
            case .fahrenheit:
                return "Fahrenheit"
            }
        }
    }
}

struct SettingsViewModel {
    
    //let units = [Unit.celsius, Unit.fahrenheit]
    let units = Unit.allCases //every case on the enum Unit
    
}
