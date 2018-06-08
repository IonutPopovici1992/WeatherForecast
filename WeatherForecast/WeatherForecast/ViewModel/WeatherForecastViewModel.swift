//
//  WeatherForecastViewModel.swift
//  WeatherForecast
//
//  Created by John on 5/23/18.
//  Copyright © 2018 John. All rights reserved.
//

import Foundation

class WeatherForecastViewModel {

    private var forecastList: ForecastList!
    
    func updateLocation(currentCity: String) -> () {
        print(currentCity)
    }
    
    func getForecastList() {
        WeatherForecastManagerDLG.loadForecastList { (forecastListResult, error) in
            if let unwrappedForecastList = forecastListResult {
                print(unwrappedForecastList)
            }
        }
    }

}
