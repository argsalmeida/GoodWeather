//
//  WeatherListTableViewcontroller.swift
//  GoodWeather
//
//  Created by Ana Almeida on 25/07/2020.
//  Copyright © 2020 Ana Almeida. All rights reserved.
//

import Foundation
import UIKit

class WeatherListTableViewcontroller: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        
        cell.cityNameLabel.text = "Houston"
        cell.temperatureLabel.text = "70º"
        
        return cell
    }
}
