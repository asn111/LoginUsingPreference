//
//  DeleteProfile.swift
//  oopConcepts Clearence
//
//  Created by Ahsan Iqbal on 29/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import Foundation
import UIKit

class DeleteProfile: Login {
    override func loginNow(username: String, password: String, vc: UIViewController) {
        
        if(username == Preference.get(currentLevelKey: Preference.currentLevelKeyU)){
            Preference.removeValues(key: Preference.currentLevelKeyU)
            print("value 1 deleted")
            //print("Values is \(Preference.get(currentLevelKey: Preference.currentLevelKeyU))")
        }
        if(password == Preference.get(currentLevelKey: Preference.currenLevelKeyP)){
        Preference.removeValues(key: Preference.currenLevelKeyP)
            print("value 2 deleted")
//            if let pass = Preference.get(currentLevelKey: Preference.currenLevelKeyP).isEmpty {
//                print("Values is \(pass))")
//            }
        }
//        if(Preference.get(currentLevelKey: Preference.currentLevelKeyU).isEmpty && Preference.get(currentLevelKey: Preference.currenLevelKeyP).isEmpty){
        showAlert(title: "Deletion Successfull", message: "Your account has been deleted", viewControler: vc)
//        } else {
//            print("error in getting values")
//        }
    }
}
