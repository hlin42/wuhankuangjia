//
//  _42projTests.swift
//  442projTests
//
//  Created by Jie Chen on 9/16/18.
//  Copyright © 2018 Jie Chen. All rights reserved.
//

import XCTest
@testable import _42proj


// Thie following Unit Tests mainly test the add_Mission() in class Mission.swift
class _42projTests: XCTestCase {
    var testVal_1_MissionID:Int!
    var testVal_2_MissionID:Int!
    var testVal_3_MissionID:Int!
    var testVal_1_Latitude:Float!
    var testVal_1_Longitude:Float!
    var testVal_1_Description:String!
    var testVal_1_Hint:String!
    var testVal_2_Latitude:Float!
    var testVal_2_Longitude:Float!
    var testVal_2_Description:String!
    var testVal_2_Hint:String!
    
    
    
    override func setUp() {
        super.setUp()
        testVal_1_MissionID = 0
        testVal_2_MissionID = 1
        testVal_3_MissionID = 2
        testVal_1_Latitude = 50.0
        testVal_1_Longitude = 50.0
        testVal_1_Description = "I'm testVal_1_Description"
        testVal_1_Hint = "I'm testVal_1_Hint"
        testVal_2_Latitude = 100.0
        testVal_2_Longitude = 100.0
        testVal_2_Description = "I'm testVal_2_Description"
        testVal_2_Hint = "I'm testVal_2_Hint"
        
        
    }
    
    override func tearDown() {
        super.tearDown()
        testVal_1_MissionID = nil
        testVal_1_Latitude = nil
        testVal_1_Longitude = nil
        testVal_1_Description = nil
        testVal_1_Hint = nil
        testVal_2_Latitude = nil
        testVal_2_Longitude = nil
        testVal_2_Description = nil
        testVal_2_Hint = nil
    }
    
    //test_addMission_1()
    //Condition:    No Mission is created
    //Test:         if it can add the 1st Mission
    func test_addMission_1() {
        add_Mission(key: testVal_1_MissionID, Latitude: testVal_1_Latitude, Longitude: testVal_1_Longitude, Description: testVal_1_Description, Hint: testVal_1_Hint)
        XCTAssertFalse(Overall_Data_Storage[testVal_1_MissionID] == nil, "Error! Occuring when addMission() try to add the 1st mission")
        
        let temp = Overall_Data_Storage[testVal_1_MissionID]
        XCTAssertTrue(temp!.Latitude == testVal_1_Latitude && temp!.Longitude == testVal_1_Longitude && temp!.description == testVal_1_Description && temp!.hint == testVal_1_Hint, "test_addMission_1 failed!")
    }
    
    //test_addMission_2()
    //Condition:    1 Mission is created
    //Test:         if it can add the 2nd Mission
    func test_addMission_2() {
        add_Mission(key: testVal_2_MissionID, Latitude: testVal_1_Latitude, Longitude: testVal_1_Longitude, Description: testVal_1_Description, Hint: testVal_1_Hint)
        add_Mission(key: testVal_2_MissionID, Latitude: testVal_2_Latitude, Longitude: testVal_2_Longitude, Description: testVal_2_Description, Hint: testVal_2_Hint)
        
        let temp1 = Overall_Data_Storage[testVal_2_MissionID]
        let temp2 = Overall_Data_Storage[testVal_2_MissionID]!.Next
        XCTAssertFalse(temp1 == nil, "Error! Occuring when addMission() try to add the 1st mission")
        XCTAssertFalse(temp2 == nil, "Error! Occuring when addMission() try to add the 2nd mission")
        XCTAssertTrue(temp1!.Latitude == testVal_1_Latitude && temp1!.Longitude == testVal_1_Longitude && temp1!.description == testVal_1_Description && temp1!.hint == testVal_1_Hint, "test_addMission_2 failed!")
        XCTAssertTrue(temp2!.Latitude == testVal_2_Latitude && temp2!.Longitude == testVal_2_Longitude && temp2!.description == testVal_2_Description && temp2!.hint == testVal_2_Hint, "test_addMission_2 failed!")
    }
    
    //test_addMission_3()
    //Condition:    2 Mission is created
    //Test:         if it can add the 3rd Mission
    func test_addMission_3() {
        add_Mission(key: testVal_3_MissionID, Latitude: testVal_1_Latitude, Longitude: testVal_1_Longitude, Description: testVal_1_Description, Hint: testVal_1_Hint)
        add_Mission(key: testVal_3_MissionID, Latitude: testVal_1_Latitude, Longitude: testVal_1_Longitude, Description: testVal_1_Description, Hint: testVal_1_Hint)
        add_Mission(key: testVal_3_MissionID, Latitude: testVal_2_Latitude, Longitude: testVal_2_Longitude, Description: testVal_2_Description, Hint: testVal_2_Hint)
        
        
        let temp1 = Overall_Data_Storage[testVal_3_MissionID]!.Next
        let temp = temp1!.Next
        
        XCTAssertFalse(temp == nil, "Error! Occuring when addMission() try to add the 3rd mission")
        XCTAssertTrue(temp!.Latitude == testVal_2_Latitude && temp!.Longitude == testVal_2_Longitude && temp!.description == testVal_2_Description && temp!.hint == testVal_2_Hint, "test_addMission_3 failed!")
    }
    
    func testPerformanceExample() {
        self.measure {
            test_addMission_1()
            test_addMission_2()
            test_addMission_3()
        }
    }
}
