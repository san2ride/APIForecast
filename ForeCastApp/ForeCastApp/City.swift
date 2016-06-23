//
//  City.swift
//  ForeCastApp
//
//  Created by don't touch me on 6/23/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class City: NSObject {

    var name: String = ""
    var zipcode: String = ""
    var latitude: Double = 0.0
    var longitude: Double = 0.0
    
    override init() {
        super.init()
    
        self.name = ""
        self.zipcode = ""
        self.latitude = 0.0
        self.longitude = 0.0
    
    }
    
    init(jsonDict: JSONDictionary) {
        
        if let name = jsonDict["name"] as? String {
            self.name = name
        } else {
            print("i could not parse the name")
        }

        if let zipcode = jsonDict["zipcode"] as? String {
            self.zipcode = zipcode
        } else {
            print("i could not parse the zipcode")
        }

        if let latitude = jsonDict["latitude"] as? Double {
            self.latitude = latitude
        } else {
            print("i could not parse the latitude")
        }
        
        if let longitude = jsonDict["longitude"] as? Double {
            self.longitude = longitude
        } else {
            print("i could not parse the longitude")
        }
        
        
        
    }
    
    
    
}
