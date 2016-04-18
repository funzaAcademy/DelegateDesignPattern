//
//  ViewController.swift
//  Delegate
//
//  Created by Sanjay Noronha on 2016/03/19.
//  Copyright © 2016 funza Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    // Every third character in my text field 
    // should be a rocket !
    
    @IBOutlet var myRocketTextField: UITextField!
    @IBOutlet var myBusTextField: UITextField!
    let myBusDelegate = DelegateBusText()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myRocketTextField.delegate = self
        myBusTextField.delegate = myBusDelegate
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool         {
        
        // return NO to not change text
        
        if ((textField.text?.characters.count)! + string.characters.count ) % MyConstants.myCharacters.myRocket == 0
        {
                if string.characters.count > 0
                {
                    textField.text = textField.text! + MyConstants.myEmojis.myRocket
                    return false
                }
            
        }
        
        
        return true
    }
    





}

