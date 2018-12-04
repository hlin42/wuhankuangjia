//
//  AchievementViewController.swift
//  442proj
//
//  Created by KuangKeming on 12/3/18.
//  Copyright © 2018 Jie Chen. All rights reserved.
//

import UIKit

class AchievementViewController: UIViewController {
    @IBOutlet weak var Achievement1: UILabel!
    @IBOutlet weak var Achievement2: UILabel!
    @IBOutlet weak var Achievement3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Achievement1.text = "Mission: 001"
        Achievement2.text = "Mission: 666"
        Achievement3.text = "Mission: 777"
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
