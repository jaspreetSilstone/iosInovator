//
//  ViewController.swift
//  iOSInovator
//
//  Created by Silstone on 18/07/19.
//  Copyright © 2019 Silstone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     //MARK: IBOutlets
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    //MARK: Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Functions
    func showAlert() {
         CommonFunctions().ShowAlert(title: "Title", message: "message...", in: self)
    }
    
    //MARK: Button Actions
    @IBAction func btnLoginAction(_ sender: Any) {
        let validEmail = CommonFunctions().isValidEmail(testStr: txtEmail.text!)
        if !(validEmail) {
            CommonFunctions().ShowAlert(title: "Alert", message: "Please enter valid email", in: self)
        } else {
             CommonFunctions().ShowAlert(title: "Alert", message: "Login Successfuly", in: self)
        }
    }
    
}

