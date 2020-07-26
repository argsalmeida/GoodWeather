//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by Ana Almeida on 26/07/2020.
//  Copyright © 2020 Ana Almeida. All rights reserved.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(_ vm: WeatherViewModel) {
        self.cityNameLabel.text = vm.name
        self.temperatureLabel.text = "\(vm.currentTemperature.temperature.formatAsDegree)"
    }
}
