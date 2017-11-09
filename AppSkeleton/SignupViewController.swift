//
//  ViewController.swift
//  AppSkeleton
//
//  Created by Isac Joseph on 07/11/17.
//  Copyright © 2017 Isac Joseph. All rights reserved.
//

import UIKit
import Material

class SignupViewController: BaseViewController
{
    
    @IBOutlet weak var txtEmail: ErrorTextField!
    @IBOutlet weak var txtFirstName: TextField!
    @IBOutlet weak var txtLastName: ErrorTextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setUpTextFields()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setUpTextFields()
    {
        txtEmail.placeholder = "Email"
        txtEmail.detail = "Enter a valid email"
        txtEmail.isClearIconButtonEnabled = true
        //txtEmail.delegate = self
        txtEmail.isPlaceholderUppercasedWhenEditing = false
        txtEmail.placeholderAnimation = .default
    }
    
    override func keyBoardStateChanged(keyBoardDisplayed:Bool,height:Float)
    {
        
    }
}

