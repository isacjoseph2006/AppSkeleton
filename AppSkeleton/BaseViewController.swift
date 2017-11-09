//
//  BaseViewController.swift
//  AppSkeleton
//
//  Created by Isac Joseph on 08/11/17.
//  Copyright © 2017 Isac Joseph. All rights reserved.
//

import Foundation
import UIKit


class BaseViewController: UIViewController
{
  
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super .viewWillAppear(animated)
        addKeyBoardListerners()
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        NotificationCenter.default.removeObserver(self)
    }
    
    /*
     * Adding listerners for showing and hiding keyboard
     */
    func  addKeyBoardListerners()
    {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisappear), name: Notification.Name.UIKeyboardWillHide, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear), name: Notification.Name.UIKeyboardWillShow, object: nil)
    }
    
    /*
     * Keyboard shown
     */
    @objc func keyboardWillAppear()
    {
        keyBoardStateChanged(keyBoardDisplayed: true, height: 0)
    }
    
    /*
     * Keyboard hidden
     */
    @objc func keyboardWillDisappear()
    {
        keyBoardStateChanged(keyBoardDisplayed: false, height: 0)
    }
    
    /*
     * This method will be overriden by subclass when needed
     */
    func keyBoardStateChanged(keyBoardDisplayed:Bool,height:Float){}
    
    
}



