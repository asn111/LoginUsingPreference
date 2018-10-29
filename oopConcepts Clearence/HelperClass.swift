//
//  HelperClass.swift
//  oopConcepts Clearence
//
//  Created by Ahsan Iqbal on 29/10/2018.
//  Copyright © 2018 SelfIT. All rights reserved.
//

import Foundation
import UIKit

func showAlert(title: String, message: String , viewControler: UIViewController){
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    viewControler.present(alert, animated: true)
    }
