//
//  ViewController.swift
//  oopConcepts Clearence
//
//  Created by Ahsan Iqbal on 25/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    
    @IBOutlet weak var userName_text: UITextField!
    @IBOutlet weak var password_text: UITextField!
    
    @IBAction func deleteProf(_ sender: Any) {
        let del = DeleteProfile()
        del.loginNow(username: userName_text.text! , password: password_text.text!, vc: self)
    }
    
    @IBAction func enterBtn(_ sender: Any) {
        let loginVC = Login()
        loginVC.loginNow(username: userName_text.text!, password: password_text.text!, vc: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hides Back button
        self.navigationItem.setHidesBackButton(true, animated: true)
        // hides Navigation bar
        self.navigationController?.isNavigationBarHidden = true
        // enables swipe left to go back
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self as? UIGestureRecognizerDelegate
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true

        userName_text.delegate = self
        password_text.delegate = self
    }
    
    // hides keyboard when return pressed
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (string == "\n") {
            textField.resignFirstResponder()
            return false
        }
        return true
    }
}

