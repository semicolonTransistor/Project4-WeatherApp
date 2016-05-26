//
//  UrlGenerator.swift
//  WeatherApp
//
//  Created by Jinyu Liu on 5/26/16.
//  Copyright © 2016 Electricfish Electroincs. All rights reserved.
//

import Foundation

class UrlGenerator{
    static let version:String = "2.5"
    static let unit:String = "metric"
    static let apiKey:String = "5cf1874ae4af126924e1840b6283ec3a"
    static let defaultCity:String = "philadephila"
    
    
    static func generateUrl(cityName:String) -> String{
        let url:String = "http://api.openweathermap.org/data/" + version + "/weather?q=" + cityName + "&mode=json&units=" + unit + "&cnt=1&appid=" + apiKey
        return url
    }
}
