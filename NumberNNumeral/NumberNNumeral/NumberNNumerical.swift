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
        func convertRomanToArab(numerical:String)->Int {
            if ((numerical as NSString).length > 0 || numerical != "") {
                if numerical == "M" {
                    return 1000
                }else{
                    return 0
                }
            }else{
                return -1
            }
        }
    func convertArabicToRoman(var number:Int) -> String {
        
        if number > 0 {
            var roman:String = ""
            var repeats:Int = 0
  
            //repeats = number/1
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