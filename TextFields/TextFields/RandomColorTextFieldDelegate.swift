//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Ryan Harvey on 6/21/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {
    let colors = [
        UIColor.redColor(), UIColor.orangeColor(), UIColor.yellowColor(),
        UIColor.greenColor(), UIColor.blueColor(), UIColor.purpleColor(),
        UIColor.brownColor()
    ];
    
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(self.colors.count))
        return self.colors[randomIndex]
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        return true
    }
}
