//
//  WeatherForecastViewModel.swift
//  WeatherForecast
//
//  Created by John on 5/23/18.
//  Copyright © 2018 John. All rights reserved.
//

import Foundation

class WeatherForecastViewModel {

    private var forecastList: ForecastList?
    
    class func getForecastList(latitude: Double, longitude: Double, getCoordinates: (Double, Double) -> Double) -> Double {
        
        // return getCoordinates(latitude, longitude)
    }
    
    var city_name: String {
        return (self.forecastList?.timezone)!
    }
    
    /*
        { (params) -> returnType in
            statements
        }
    */

}
