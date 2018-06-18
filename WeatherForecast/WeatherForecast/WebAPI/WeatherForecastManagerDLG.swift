//
//  WeatherForecastManagerDLG.swift
//  WeatherForecast
//
//  Created by John on 5/16/18.
//  Copyright © 2018 John. All rights reserved.
//

import Foundation

protocol WeatherForecastManagerDelegate {
    func dataTaskHasCompleted()
}

class WeatherForecastManagerDLG {
    
    var listForecastList: ForecastList?
    
    var delegate: WeatherForecastManagerDelegate?
    
    private static let baseDarkSkyAPIURLString = "https://api.darksky.net/forecast/"
    private static let secretKey = "221e7c08f0b98c95443d04fac0ed87a3"
    private static let latitude = 42.3601
    private static let longitude = -71.0589
    
    // loadForecastList functionality
    class func loadForecastList(completion: @escaping (ForecastList?, Error?) -> ()) {
        
        let jsonURLString = baseDarkSkyAPIURLString + secretKey + "/\(latitude),\(longitude)"
        guard let url = URL(string: jsonURLString) else {
            completion(nil, nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            print("error = \(String(describing: error))")
            guard let data = data else {
                print("No data returned")
                completion(nil, error)
                return
            }
            do {
                let forecastList = try JSONDecoder().decode(ForecastList.self, from: data)
                print(type(of: forecastList))
                print(forecastList)
                completion(forecastList, nil)
            } catch let jsonError {
                completion(nil, jsonError)
                print("Error serializing json: ", jsonError)
            }
        }.resume()

    }

}
