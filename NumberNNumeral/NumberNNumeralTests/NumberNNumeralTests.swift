//
//  NumberNNumeralTests.swift
//  NumberNNumeralTests
//
//  Created by Pradeep Burugu on 2/23/16.
//  Copyright © 2016 Pradeep Burugu. All rights reserved.
//

import XCTest
@testable import NumberNNumeral

class NumberNNumeralTests: XCTestCase {
    var testClass:NumberNNumerical?
    override func setUp() {
        super.setUp()
        testClass = NumberNNumerical()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    func testConvertArabicToRoman() {
        XCTAssertEqual(testClass?.convertArabicToRoman(1), "I","Unable to convert")
        XCTAssertEqual(testClass?.convertArabicToRoman(3), "III", "Unable to convert")
        XCTAssertEqual(testClass?.convertArabicToRoman(9), "IX", "Unable to convert")
        XCTAssertEqual(testClass?.convertArabicToRoman(1066), "MLXVI", "Unable to convert")
        XCTAssertEqual(testClass?.convertArabicToRoman(1989), "MCMLXXXIX", "Unable to convert")
        //Test case to validate negative number
        XCTAssertEqual(testClass?.convertArabicToRoman(-1), "-1", "Negative number converted")

      

    }
    func testConvertRomanToArab(){
        XCTAssertEqual(testClass?.convertRomanToArab("M"), 1000, "Unable to convert")
    }
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
