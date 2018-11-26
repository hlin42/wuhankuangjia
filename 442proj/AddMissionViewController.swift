//
//  AddMissionViewController.swift
//  442proj
//
//  Created by Jie Chen on 10/21/18.
//  Copyright © 2018 Jie Chen. All rights reserved.
//

import UIKit

//var temp_Description = ""
//var temp_Longitude : Float =  0.0
//var temp_Latitude : Float = 0.0
//var temp_MissionID : Int = 0
//var label_text = ""
var counting_step = 0

class AddMissionViewController: UIViewController {
    //MARK: Properties

    @IBOutlet weak var Description: UITextField!
    @IBOutlet weak var Longitude: UITextField!
    @IBOutlet weak var Latitude: UITextField!
    @IBOutlet weak var MissionID: UITextField!
    @IBOutlet weak var ProgressLabel: UILabel!
    @IBOutlet weak var Finish: UIButton!
    @IBOutlet weak var AddNext: UIButton!
    @IBOutlet weak var Hint: UITextField!
    @IBOutlet weak var StepCount: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        StepCount.text = counting_step.description
    }
    

    @IBAction func AddingNext(_ sender: Any) {
        
        let a : Int?  = Int(MissionID.text!)
        let b : Float? = Float(Latitude.text!)
        let c : Float? = Float(Longitude.text!)
        add_Mission(key: a!, Latitude: b!, Longitude: c!, Description: Description.text!,Hint:Hint.text!)
        self.ProgressLabel.text = Overall_Data_Storage[a!]?.description
        Longitude.text = ""
        Hint.text = ""
        Latitude.text = ""
        counting_step += 1
        viewDidLoad()
    }
    
    @IBAction func Finishing(_ sender: Any) {
        
        let a : Int?  = Int(MissionID.text!)
        let b : Float? = Float(Latitude.text!)
        let c : Float? = Float(Longitude.text!)
        add_Mission(key: a!, Latitude: b!, Longitude: c!, Description: Description.text!,Hint:Hint.text!)
        
        UserDefaults.standard.set(Overall_Data_Storage, forKey: "TheData")
        self.ProgressLabel.text = " FINISHED PLZ exit on your own"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
