//
//  CommonFunctions.swift
//  iOSInovator
//
//  Created by Silstone on 19/07/19.
//  Copyright © 2019 Silstone. All rights reserved.
//

import Foundation
import UIKit

class CommonFunctions {
    static let sharedInstance = CommonFunctions()
    
    init() {
        // do initial setup or establish an initial connection
    }
    
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = kEmailValidation
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    func ShowAlert(title: String, message: String, in vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
}



