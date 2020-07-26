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
        
        
        
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
