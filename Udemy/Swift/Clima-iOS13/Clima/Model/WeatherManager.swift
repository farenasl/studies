//
//  WeatherManager.swift
//  Clima
//
//  Created by BCI MacBook Pro on 25-08-20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=eccc86ad98508dbf371a8b08f2154d82&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            
            ///opc1
            //let task = session.dataTask(with: url, completionHandler: handle(data: response: error:))
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    //                    let dataString = String(data: safeData, encoding: .utf8)
                    //                    print(dataString)
                    self.parseJSON(weatherData: safeData)
                }
            }
            task.resume()
        }
    }
    
    //op1
    /*
     func handle(data: Data?, response: URLResponse?, error: Error?) {
     if error != nil {
     print(error!)
     return
     }
     
     if let safeData = data {
     let dataString = String(data: safeData, encoding: .utf8)
     print(dataString)
     }
     }
     */
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.name)
            print(decodedData.main.temp)
            print(decodedData.weather[0].description)
            print(decodedData.weather[0].id)
            
            let weather = WeatherModel(conditionId: decodedData.weather[0].id, cityName: decodedData.weather[0].description, temperature: decodedData.main.temp)
            
//            print(getConditionName(weatherId: decodedData.weather[0].id))
//            print(weather.getConditionName(weatherId: weather.id))
            print(weather.conditionName)
            print(weather.temperatureString)
        } catch {
            print(error)
        }
    }
    
    
}
