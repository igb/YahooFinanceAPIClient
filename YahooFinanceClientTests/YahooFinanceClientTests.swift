//
//  YahooFinanceClientTests.swift
//  YahooFinanceClientTests
//
//  Created by Ian Brown on 5/9/15.
//  Copyright (c) 2015 Ian Brown. All rights reserved.
//

import Cocoa
import XCTest
import YahooFinanceClient

class YahooFinanceClientTests: XCTestCase {
    
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
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testBasicCall() {
        var client = YahooFinanceClient();
        var price = client.getLatestPrice("twtr");
        XCTAssertNotNil(price, "Latest price should not be nil.");
    }
    
}
