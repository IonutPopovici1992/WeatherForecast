//
//  Currently.swift
//  WeatherForecast
//
//  Created by John on 5/16/18.
//  Copyright © 2018 John. All rights reserved.
//

import Foundation

struct Currently: Decodable {
    var time: UInt64
    var temperature: Double
    var humidity: Double
    var pressure: Double
    var windSpeed: Double
}
