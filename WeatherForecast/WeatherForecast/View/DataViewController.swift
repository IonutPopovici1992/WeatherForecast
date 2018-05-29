//
//  DataViewController.swift
//  WeatherForecast
//
//  Created by John on 5/24/18.
//  Copyright © 2018 John. All rights reserved.
//

import UIKit

class DataViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var listOfCities = ["City 1", "City 2", "City 3", "City 4", "City 5"]
    
    // numberOfRowsInSection
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfCities.count
    }
    
    // cellForRowAt
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = listOfCities[indexPath.row]
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
