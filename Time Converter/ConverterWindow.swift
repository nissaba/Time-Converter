//
//  ConverterWindow.swift
//  Time Converter
//
//  Created by Pascale Beaulac on 2015-02-05.
//  Copyright (c) 2015 Pascale Beaulac. All rights reserved.
//

import Cocoa

class ConverterWindow: NSWindow {

    @IBOutlet weak var comboBox: NSPopUpButton!
    @IBOutlet weak var fromTextFiled: NSTextField!
    @IBOutlet weak var toTextField: NSTextField!
    @IBAction func convertValuesPressed(sender: AnyObject) {
        let stringValueToConvert = self.fromTextFiled.stringValue;
        let charset = NSCharacterSet(charactersInString:",.:")
        
        let componenent = stringValueToConvert.componentsSeparatedByCharactersInSet(charset)
        if(componenent.count != 2){
            self.toTextField.stringValue = "Bad time format"
            return
        }
        let minutes = componenent[1]
        let hrs = componenent[0]
        
       let conversionType = self.comboBox.indexOfSelectedItem
        
        if(conversionType == 0){
            if(minutes.toInt()! > 59){
                self.toTextField.stringValue = "Bad time format"
                return
            }
            var decimalTime: Int = minutes.toInt()!
            decimalTime =  Int((Double(decimalTime) / 60)*100)
            self.toTextField.stringValue = hrs + ":" + String(decimalTime)
        }else{
            if(minutes.toInt()! > 99){
                self.toTextField.stringValue = "Bad time format"
                return
            }
            var decimalTime: Int = minutes.toInt()!
            decimalTime =  Int(Double(decimalTime)/100 * 60)
            self.toTextField.stringValue = hrs + ":" + String(decimalTime)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.fromTextFiled.becomeFirstResponder()
    }
}
	