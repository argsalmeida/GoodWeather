//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Ana Almeida on 25/07/2020.
//  Copyright © 2020 Ana Almeida. All rights reserved.
//

import Foundation
import UIKit

class AddWeatherCityViewController: UIViewController {
    
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtonPressed() {
        
        if let city = cityNameTextField.text {
            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=fba8e937627ce079de5d4de685252c46&units=imperial")!
            
            let weatherResource = Resource<Any>(url: weatherURL) { data -> Any? in
                return data
            }
            Webservice().load(resource: weatherResource) { result in
                
            }
            
        }
        
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
