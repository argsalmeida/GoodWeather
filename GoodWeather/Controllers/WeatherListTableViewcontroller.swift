//
//  WeatherListTableViewcontroller.swift
//  GoodWeather
//
//  Created by Ana Almeida on 25/07/2020.
//  Copyright © 2020 Ana Almeida. All rights reserved.
//

import Foundation
import UIKit

class WeatherListTableViewcontroller: UITableViewController, AddWeatherDelegate {
    
    private var weatherListViewModel = WeatherListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    func addWeatherDidSave(vm: WeatherViewModel) {
        
        self.weatherListViewModel.addWeatherViewModel(vm)
        self.tableView.reloadData()
        //print(vm.name)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.weatherListViewModel.numberOfRows(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        
        //cell.cityNameLabel.text = "Houston"
        //cell.temperatureLabel.text = "70º"
        
        let weatherVM = self.weatherListViewModel.modelAt(indexPath.row)
//        cell.cityNameLabel.text = weatherVM.name
//        cell.temperatureLabel.text = "\(weatherVM.currentTemperature.temperature)"
        cell.configure(weatherVM)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddWeatherCityViewController" {
            prepareSegueForAddWeatherCityViewController(segue: segue)
        } else if segue.identifier == "SettingsTableViewConteoller" {
            prepareSegueForSettingsTableViewController(segue: segue)
        }
    }
    
    private func prepareSegueForAddWeatherCityViewController(segue: UIStoryboardSegue) {
        guard let nav = segue.destination as? UINavigationController else {
            fatalError("NavigationController not found")
        }
        
        guard let addWeatherCityVC = nav.viewControllers.first as? AddWeatherCityViewController else {
            fatalError("AddWeatherCityViewController not found")
        }
        
        addWeatherCityVC.delegate = self
    }
    
    private func prepareSegueForSettingsTableViewController(segue: UIStoryboardSegue) {
//        guard let nav = segue.destination as? UINavigationController else {
//            fatalError("NavigationController not found")
//        }
    }
}
