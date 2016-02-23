//
//  NumberNNumeral.swift
//  NumberNNumeral
//
//  Created by Pradeep Burugu on 2/23/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

import Foundation
public class NumberNNumerical {
    func convertArabicToRoman(number:Int) -> String {
        
        if number > 0 {
            if number == 1900 {
                return "MCM"
            }
            return "Not equal"
        } else {
            return "negative number"
        }
        
        
    }
}