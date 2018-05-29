//
//  Daily.swift
//  WeatherForecast
//
//  Created by John on 5/16/18.
//  Copyright © 2018 John. All rights reserved.
//

import Foundation

struct Daily: Decodable {
    var summary: String
    var icon: String
    var data: [DailyData]
}

struct DailyData: Decodable {
    var time: UInt64
    var summary: String
    var icon: String
    var humidity: Double
    var pressure: Double
    var windSpeed: Double
    var temperatureMin: Double
    var temperatureMax: Double
}
