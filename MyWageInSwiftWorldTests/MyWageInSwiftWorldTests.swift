//
//  MyWageInSwiftWorldTests.swift
//  MyWageInSwiftWorldTests
//
//  Created by Вячеслав Горлов on 28.09.17.
//  Copyright © 2017 Gorloff Foundation. All rights reserved.
//

import XCTest

class MyWageInSwiftWorldTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testWage() {
        XCTAssert(Wage.hours(forWage: 50, withPrice: 200) == 4)
        XCTAssert(Wage.hours(forWage: 15.50, withPrice: 250.53) == 17)
    }
    
}
