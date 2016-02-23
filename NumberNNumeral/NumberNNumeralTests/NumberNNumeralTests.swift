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
    func testConvertNumberToNumerical() {
        //testClass?.convertArabicToRoman(100)
        XCTAssertEqual(testClass?.convertArabicToRoman(1900), "MCM","Not Equal")
        XCTAssertEqual(testClass?.convertArabicToRoman(1901), "Cannot Convert","Unable to convert")

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
