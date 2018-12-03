//
//  SecondViewController.swift
//  442proj
//
//  Created by Jie Chen on 9/22/18.
//  Copyright © 2018 Jie Chen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var Testing: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //for (k, v) in Overall_Data_Storage{
        //    if k == 0{
          //      continue
           // }
            //Testing_String +=  "\n\nMission Code:  \(k) \n Description: \(v.description)\n            "
        Testing.text = "Mission Code: 001 \n Description: Basic UB Exploration \n Number of Steps: 2 \n -------------------\nMission Code: 002 \n Description: Advance UB Exploration \n Number of Steps: 5 \n -------------------\nMission Code: 003 \n Description: Tour of Life of Computer Engineers \n Number of Steps: 2 \n -------------------\n "
            
        }
        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

//}
