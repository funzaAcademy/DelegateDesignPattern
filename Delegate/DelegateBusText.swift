//
//  DelegateBusText.swift
//  Delegate
//
//  Created by Sanjay Noronha on 2016/03/19.
//  Copyright © 2016 funza Academy. All rights reserved.
//

import Foundation
import UIKit

class DelegateBusText:NSObject, UITextFieldDelegate
{
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool         {
        
        // return NO to not change text
        
        if ((textField.text?.characters.count)! + string.characters.count ) % MyConstants.myCharacters.myBus == 0
        {
            if string.characters.count > 0
            {
                textField.text = textField.text! + MyConstants.myEmojis.myBus
                return false
            }
            
        }
        
        
        return true
    }

    
    
}