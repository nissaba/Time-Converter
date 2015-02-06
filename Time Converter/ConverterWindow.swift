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
        
        let componenet = stringValueToConvert.componentsSeparatedByCharactersInSet(charset)
        let minutes = componenet[1]
        let hrs = componenet[0]
        
        NSLog("hrs:%@ min:%@",hrs,minutes)
        //note
    }
}
	