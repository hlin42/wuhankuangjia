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
    
    @IBOutlet weak var Test_add: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.Testing.text = Testing_String
// add_Mission()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func Button_add_Mission(_ sender: Any) {
        Testing_String += "Hello  "
        viewDidLoad()
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
