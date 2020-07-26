//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Ana Almeida on 26/07/2020.
//  Copyright © 2020 Ana Almeida. All rights reserved.
//

import Foundation

extension Double {
    
    var formatAsDegree: String {
        return String(format: "%.0fº", self)
    }
    
}
