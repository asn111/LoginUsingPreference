//
//  Preferences.swift
//  oopConcepts Clearence
//
//  Created by Ahsan Iqbal on 25/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import Foundation
import UIKit

class Preference {
    
    static var sharedPreferences = UserDefaults.standard
    static var currentLevelKeyU = "username"
    static var currenLevelKeyP = "password"
    static var value: String!
    
    
    static func set(value: String, currentLevelKey: String) {
        self.value = value
        if(currentLevelKey == "username"){
        self.currentLevelKeyU = currentLevelKey
        sharedPreferences.set(value, forKey: currentLevelKey)
        sharedPreferences.synchronize()
        }
        if(currentLevelKey == "password"){
            self.currenLevelKeyP = currentLevelKey
            sharedPreferences.set(value, forKey: currentLevelKey)
            sharedPreferences.synchronize()
        }
    }
    static func get(currentLevelKey: String) -> String {
        var returingValue: String!
        
        if(!(currentLevelKey.isEmpty)){
            returingValue = sharedPreferences.string(forKey: currentLevelKey)
        }
        return returingValue
    }
    static func removeValues(key: String) {
        sharedPreferences.removeObject(forKey: key)
    }
}
