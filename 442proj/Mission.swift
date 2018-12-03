//
//  Mission.swift
//  442proj
//
//  Created by Jie Chen on 10/14/18.
//  Copyright © 2018 Jie Chen. All rights reserved.
//

import Foundation

public class Mission_Storage {
    var Latitude : Float = 0.0
    var Longitude : Float = 0.0
    var has_Next : Bool = false
    var Next : Mission_Storage? = nil
    var description = ""
    var hint = ""
}
public var Overall_Data_Storage = [Int : Mission_Storage]()

public func add_Mission (key: Int, Latitude: Float, Longitude:Float, Description : String, Hint: String){
    // 2 case, if key already exist, add next_step of the mission
    //if not, initilize first step of the mission
    if Overall_Data_Storage[key] != nil{
        var latest_Mission = Overall_Data_Storage[key]
        let temp = Mission_Storage()
        temp.Latitude = Latitude
        temp.Longitude = Longitude
        temp.description = Description
        temp.hint = Hint
        while(latest_Mission!.has_Next ){ //last_Mission will the currently last step
            
            latest_Mission = latest_Mission!.Next
        }
        latest_Mission?.has_Next = true // changing the value to true has no impact on pervious steps
        // but since we are making currenly last step into second to last
        // it is necessary
        latest_Mission?.has_Next = true
        // When we exit the loop latest_Mission.has_Next is false, that means last_Mission.Next is null
        // Following line is to assign our pre declare temp Mission_Storage class to last_Mission.Next
        latest_Mission?.Next = temp
    }
    else{
        let temp = Mission_Storage()
        temp.Latitude = Latitude
        temp.Longitude = Longitude
        temp.description = Description
        temp.hint = Hint
        Overall_Data_Storage[key] = temp
        
    }
}




