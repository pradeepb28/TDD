//
//  NumberNNumeral.swift
//  NumberNNumeral
//
//  Created by Pradeep Burugu on 2/23/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

import Foundation
public class NumberNNumerical {
    let magnitudeNumbers=[1000,900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    let numericals=["M","CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];
    let values:[(String,Int)] = [("M", 1000), ("CM", 900), ("D", 500), ("CD", 400), ("C",100), ("XC", 90), ("L",50), ("XL",40), ("X",10), ("IX", 9), ("V",5),("IV",4), ("I",1)]

    func convertRomanToArabic(value:String) -> Int? {
        var string = value
        
        
        
        var result = 0
        
        for (romanChars, arabicValue) in values {
            let range = Range<String.Index>(start: romanChars.startIndex, end: romanChars.endIndex)
            
            while string.hasPrefix(romanChars) {
                result = result + arabicValue
                
                string.removeRange(range)
            }
        }
        
        if (string.isEmpty) {
            return result
        }
        
        return nil
    }
    func convertArabicToRoman(var number:Int) -> String {
        
        if number > 0 {
            var roman:String = ""
            var repeats:Int = 0
              for (var x = 0; number > 0; x++){
                repeats = number/magnitudeNumbers[x]
                for (var i=1;i<=repeats;i++){
                    roman = roman + numericals[x]
                }
                number = number % magnitudeNumbers[x]
            }
            return roman
            
        } else {
            return "-1"
        }
     
        
    }
    
    
    
    
    
    
    
}