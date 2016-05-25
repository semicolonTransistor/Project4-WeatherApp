//
//  ViewController.swift
//  WeatherApp
//
//  Created by Jinyu Liu on 5/25/16.
//  Copyright © 2016 Electricfish Electroincs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forecastLabel:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let manager = AFHTTPSessionManager()
        manager.GET("http://api.openweathermap.org/data/2.5/forecast/daily?q=London&mode=json&units=metric&cnt=1&appid=5cf1874ae4af126924e1840b6283ec3a",
            parameters: nil,
            progress: nil,
            success: { (operation: NSURLSessionDataTask,responseObject: AnyObject?) in
                if let responseObject = responseObject {
                    print("Response: " + responseObject.description)
                    let json = JSON(responseObject)
                    if let forecast = json["list"][0]["weather"][0]["description"].string {
                        self.forecastLabel.text = forecast
                    }
                }
            },
            failure: { (operation: NSURLSessionDataTask?,error: NSError) in
                print("Error: " + error.localizedDescription)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

