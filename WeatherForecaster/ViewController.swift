//
//  ViewController.swift
//  WeatherForecaster
//
//  Created by Larry Heimann on 11/6/15.
//  Copyright (c) 2015 Larry Heimann. All rights reserved.
//

import UIKit
import CoreLocation

var temp: Float?
var city: String?
var icon: String?

class ViewController: UIViewController, CLLocationManagerDelegate {
  
  @IBOutlet weak var cityLabel: UILabel!
  @IBOutlet weak var tempLabel: UILabel!
  var forecast = Forecast()
  

  override func viewDidLoad() {
    super.viewDidLoad()
    println("forecast: \(forecast.city)")
    forecast.city = ""
    cityLabel.text = "\(forecast.city!)"
    
    if forecast.status {
      cityLabel.text = "\(forecast.city!)"
      tempLabel.text = "\(forecast.convertFromKelvinToFahrenheit())"
    } else {
      sleep(1)
      cityLabel.text = "\(forecast.city!)"
      tempLabel.text = "\(forecast.convertFromKelvinToFahrenheit())"
    }
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  


}

