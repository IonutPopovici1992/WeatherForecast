//
//  Minutely.swift
//  WeatherForecast
//
//  Created by John on 5/22/18.
//  Copyright © 2018 John. All rights reserved.
//

import Foundation

struct Minutely: Decodable {
    var summary: String
    var icon: String
    var data: [MinutelyData]
}

struct MinutelyData: Decodable {
    var time: UInt64
    var precipIntensity: Int
    var precipProbability: Int
}
