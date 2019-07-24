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
    
   static func ShowAlert(title: String, message: String, in vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
    
    static func showAlertWithMutipleActions(message:String, title:String, controller:UIViewController, firstBtnTitle:String, secondBtnTitle:String, completionHandler: @escaping (_ ActionNo:Int) -> ()) {
        var _btnActionNo : Int = 0
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let Action_1 = UIAlertAction(title: firstBtnTitle, style: .default, handler:
        {(alert: UIAlertAction!) in
            _btnActionNo = 1
            completionHandler(_btnActionNo)
        })
        alertController.addAction(Action_1)
        
        if(secondBtnTitle != "")
        {
            let Action_2 = UIAlertAction(title: secondBtnTitle, style: .default, handler:
            {(alert: UIAlertAction!) in
                _btnActionNo = 2
                completionHandler(_btnActionNo)
            })
            alertController.addAction(Action_2)
        }
        controller.present(alertController, animated: true, completion: nil)
    }
}
