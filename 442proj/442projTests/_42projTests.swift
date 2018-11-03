//
//  _42projTests.swift
//  442projTests
//
//  Created by Jie Chen on 9/16/18.
//  Copyright © 2018 Jie Chen. All rights reserved.
//

import XCTest
@testable import _42proj

class _42projTests: XCTestCase {
    var testVal_Latitude:Float!
    var testVal_Longitude:Float!
    var testVal_Description:String!
    var testVal_Hint:String!
    
    var Mission_1:Mission_Storage!
    var Mission_2:Mission_Storage!
    var Mission_3:Mission_Storage!
    
    override func setUp() {
        super.setUp()
        testVal_Latitude = 50.0
        testVal_Longitude = 50.0
        testVal_Description = "I'm TestVal_description"
        testVal_Hint = "I'm TestVal_hint"
        
        //        Mission_1.Latitude = 50.0
        //        Mission_1.Longitude = 50.0
        //        Mission_1.has_Next = false
        //        Mission_1.Next = nil
        //        Mission_1.description = "I'm description"
        //        Mission_1.hint = "I'm hint"
        //
        //        Mission_2.Latitude = 50.0
        //        Mission_2.Longitude = 50.0
        //        Mission_2.has_Next = false
        //        Mission_2.Next = nil
        //        Mission_2.description = "I'm description"
        //        Mission_2.hint = "I'm hint"
        //
        //        Mission_3.Latitude = 50.0
        //        Mission_3.Longitude = 50.0
        //        Mission_3.has_Next = false
        //        Mission_3.Next = nil
        //        Mission_3.description = "I'm description"
        //        Mission_3.hint = "I'm hint"
    }
    
    override func tearDown() {
        super.tearDown()
        Mission_1 = nil
        Mission_2 = nil
        Mission_3 = nil
    }
    
    //test_addMission_1()
    //condition:    No Mission is created
    //Test:         if it can add Mission
    func test_addMission_1() {
        add_Mission(key: 0, Latitude: testVal_Latitude, Longitude: testVal_Longitude, Description: testVal_Description, Hint: testVal_Hint)
        XCTAssertFalse(Overall_Data_Storage[0] == nil, "Error! Occuring when addMission() try to add the 1st mission")
        
        let temp = Overall_Data_Storage[0]
        XCTAssertTrue(temp!.Latitude == testVal_Latitude && temp!.Longitude == testVal_Longitude && temp!.description == testVal_Description && temp!.hint == testVal_Hint, "test_addMission_1 failed!")
    }
    
    func testPerformanceExample() {
        self.measure {
            test_addMission_1()
        }
    }
    
    // Thie following Unit Tests mainly test the add_Mission() in class Mission.swift
    
    // Mission_Test_1 tests the add_Mission()
    //              in a condition: Mission_1 is created
    //                              Mission_1 has no next mission
    //  expected result:
    
}

