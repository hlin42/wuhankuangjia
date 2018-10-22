//
//  _42projUITests.swift
//  442projUITests
//
//  Created by Jie Chen on 9/16/18.
//  Copyright © 2018 Jie Chen. All rights reserved.
//

import XCTest

class _42projUITests: XCTestCase {
    var app : XCUIApplication!
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments.append("--uitesting")

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPlayButton_exist() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.launch()
        XCTAssertTrue(app.buttons["Play"].exists)

    }
    func testCamera_RollButton_exist() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.launch()
        XCTAssertTrue(app.buttons["Camera Roll"].exists)
    }
    func testHowToPlayButton_exist() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.launch()
        XCTAssertTrue(app.buttons["How To Play"].exists)
    }
    func testRewardButton_exist() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.launch()
        XCTAssertTrue(app.buttons["Reward"].exists)
    }
    func testMapButton_exist() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.launch()
        XCTAssertTrue(app.buttons["Map"].exists)
    }
    
    
    func testPlayButton_hit() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.launch()
        XCTAssertTrue(app.buttons["Play"].isHittable)
        
    }
    func testCamera_RollButton_hit() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.launch()
        XCTAssertTrue(app.buttons["Camera Roll"].isHittable)
    }
    func testHowToPlayButton_hit() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.launch()
        XCTAssertTrue(app.buttons["How To Play"].isHittable)
    }
    func testRewardButton_hit() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.launch()
        XCTAssertTrue(app.buttons["Reward"].isHittable)
    }
    func testMapButton_hit() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        app.launch()
        XCTAssertTrue(app.buttons["Map"].isHittable)
    }
    func testARCam_Func(){
        app.launch()
        app.buttons["Play"].tap()
        app.tap()
    }
}
