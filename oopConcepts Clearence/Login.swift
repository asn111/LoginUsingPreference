//
//  Login.swift
//  oopConcepts Clearence
//
//  Created by Ahsan Iqbal on 25/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import Foundation
import UIKit

class Login: UIViewController {
    
     private var userName: String!
     private var passWord: String!
     var regVC = RegistrationViewC()
    
    func loginNow(username: String, password: String, vc: UIViewController){
        
        if (!(Preference.get(currentLevelKey: Preference.currentLevelKeyU).isEmpty) && !(Preference.get(currentLevelKey: Preference.currenLevelKeyP).isEmpty)) {
            userName = Preference.get(currentLevelKey: Preference.currentLevelKeyU)
            passWord = Preference.get(currentLevelKey: Preference.currenLevelKeyP)
            
            if(username == userName && password == passWord){
               
                showAlert(title: "Login Successful", message: "You have successfully logged in your account.", viewControler: vc)
                print("You have successfully logged in your account.")
            } else {
                showAlert(title: "Error", message: "Username or Password does not match.", viewControler: vc)
                print("Username or Password does not match.")
            }
        } else {
            print("Error, Keys not found.")
        }
    }
}
