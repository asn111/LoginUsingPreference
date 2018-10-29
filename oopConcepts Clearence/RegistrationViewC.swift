//
//  RegistrationViewC.swift
//  oopConcepts Clearence
//
//  Created by Ahsan Iqbal on 25/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import UIKit

class RegistrationViewC: UIViewController {

    @IBOutlet weak var username_re: UITextField!
    @IBOutlet weak var passRE: UITextField!
    @IBOutlet weak var pass_rere: UITextField!
    
    @IBAction func loginHereBtn(_ sender: Any) {

        if !(Preference.get(currentLevelKey: Preference.currentLevelKeyU).isEmpty) {
        let userName = Preference.get(currentLevelKey: Preference.currentLevelKeyU)
        print("PRINTED Username: \(userName)")
        } else {
            print("error in password getting")
        }
        if !(Preference.get(currentLevelKey: Preference.currenLevelKeyP).isEmpty) {
        let password = Preference.get(currentLevelKey: Preference.currenLevelKeyP)
        print("PRINTED Password: \(password)")
        } else {
            print("error in password getting")
        }
}
    @IBAction func submit(_ sender: Any) {
        
        if(passRE.text == pass_rere.text){
            
            showAlert(title: "Registration Successful", message: "You have successfully register your account.", viewControler: self)
            if(!((username_re.text?.isEmpty)!)){
                Preference.set(value: username_re.text!, currentLevelKey: Preference.currentLevelKeyU)
            }
            if(!((passRE.text?.isEmpty)!)){
                Preference.set(value: passRE.text!, currentLevelKey: Preference.currenLevelKeyP)
            }
        } else {
            showAlert(title: "Error", message: "Passwords does not match.", viewControler: self)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true

    }
}
