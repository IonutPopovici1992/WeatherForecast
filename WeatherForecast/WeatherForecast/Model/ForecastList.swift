//
//  ForecastList.swift
//  WeatherForecast
//
//  Created by John on 5/16/18.
//  Copyright © 2018 John. All rights reserved.
//

import Foundation
import CoreLocation

struct ForecastList: Decodable {
    var latitude: Double
    var longitude: Double
    var timezone: String
    var currently: [Currently]
    var minutely: [Minutely]
    var hourly: [Hourly]
    var daily: [Daily]
    var flags: String?
    var offset: Int
    
    init(latitude: Double,
         longitude: Double,
         timezone: String,
         currently: [Currently],
         minutely: [Minutely],
         hourly: [Hourly],
         daily: [Daily],
         flags: String?,
         offset: Int) {
        self.latitude = latitude
        self.longitude = longitude
        self.timezone = timezone
        self.currently = currently
        self.minutely = minutely
        self.hourly = hourly
        self.daily = daily
        self.flags = flags
        self.offset = offset
    }
    
    enum CodingKeys: String, CodingKey {
        case latitude = "latitude"
        case longitude = "longitude"
        case timezone = "timezone"
        case currently = "currently"
        case minutely = "minutely"
        case hourly = "hourly"
        case daily = "daily"
        case flags = "flags"
        case offset = "offset"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let latitude = try container.decode(Double.self, forKey: .latitude)
        let longitude = try container.decode(Double.self, forKey: .longitude)
        let timezone = try container.decode(String.self, forKey: .timezone)
        let currently = try container.decode([Currently].self, forKey: .currently)
        let minutely = try container.decode([Minutely].self, forKey: .minutely)
        let hourly = try container.decode([Hourly].self, forKey: .hourly)
        let daily = try container.decode([Daily].self, forKey: .daily)
        let flags = try container.decode(String?.self, forKey: .flags)
        let offset = try container.decode(Int.self, forKey: .offset)
        
        self.init(latitude: latitude,
                  longitude: longitude,
                  timezone: timezone,
                  currently: currently,
                  minutely: minutely,
                  hourly: hourly,
                  daily: daily,
                  flags: flags,
                  offset: offset)
    }

}
