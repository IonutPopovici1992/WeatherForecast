//
//  Hourly.swift
//  WeatherForecast
//
//  Created by John on 5/22/18.
//  Copyright © 2018 John. All rights reserved.
//

import Foundation

struct Hourly: Decodable {
    var summary: String
    var icon: String
    var data: [HourlyData]
}

struct HourlyData: Decodable {
    var time: UInt64
    var temperature: Double
    var humidity: Double
    var pressure: Double
    var windSpeed: Double
}
