//
//  ViewController.swift/
//  442proj
//
//  Created by Jie Chen on 9/16/18.
//  Copyright © 2018 Jie Chen. All rights reserved.
//

import UIKit
var Testing_String = "YOYOYOOYOY"


class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var Main: UIButton!
    @IBOutlet weak var Camera: UIButton!
    @IBOutlet weak var Reward: UIButton!
    @IBOutlet weak var HowToPlay: UIButton!
    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var Map: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //   9/23 set up the GUI for 4 buttons on the main screen
        //   Author: weijin
        Camera.setButtonGUI()
        Main.setButtonGUI()
        HowToPlay.setButtonGUI()
        Reward.setButtonGUI()
   
        let testing = Mission_Storage()
        testing.Latitude = 111.11
        testing.Longitude = 100.23
        Overall_Data_Storage[0] = testing
        Testing_String = (Overall_Data_Storage[0]?.Latitude.description)! + " and " + testing.Longitude.description
    }

    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    
    
    
    
    @IBAction func Map_Action(_ sender: Any) {
        
    }
    
    @IBAction func RewardAction(_ sender: UIButton) {
    }
    
    
    @IBAction func HowToPlayAction(_ sender: UIButton) {
    }
    
    @IBAction func CameraAction(_ sender: UIButton) {
        
//        if UIImagePickerController.isSourceTypeAvailable(.camera){
//            let imagepicker = UIImagePickerController()
//                imagepicker.delegate = self
//                imagepicker.allowsEditing = false
//                imagepicker.sourceType = UIImagePickerController.SourceType.camera
//                self.present(imagepicker,animated: false,completion: nil)
//        }
//        else{
//            let imagepicker = UIImagePickerController()
//            imagepicker.delegate = self
//            imagepicker.allowsEditing = false
//            imagepicker.sourceType = UIImagePickerController.SourceType.photoLibrary
//            self.present(imagepicker,animated: false,completion: nil)
//
//        }
        
    }
    
    
    
    
    
    
    @IBAction func MainAction(_ sender: UIButton) {

        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated:true, completion:nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
// Local variable inserted by Swift 4.2 migrator.
let info = convertFromUIImagePickerControllerInfoKeyDictionary(info)

        if let image=info[convertFromUIImagePickerControllerInfoKey(UIImagePickerController.InfoKey.originalImage)] as? UIImage {
            userImage.image = image
        }
        else{
            print("Error")
        }
        self.dismiss(animated: false
            , completion: nil)
    }
    
    
}


// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromUIImagePickerControllerInfoKeyDictionary(_ input: [UIImagePickerController.InfoKey: Any]) -> [String: Any] {
	return Dictionary(uniqueKeysWithValues: input.map {key, value in (key.rawValue, value)})
}

// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertFromUIImagePickerControllerInfoKey(_ input: UIImagePickerController.InfoKey) -> String {
	return input.rawValue
}
//This function is used to set the 4 buttons GUI on the main screen
extension UIButton{
    func setButtonGUI(){
        self.backgroundColor=UIColor.blue
        self.layer.cornerRadius = self.frame.height/2.0
        self.setTitleColor(UIColor.white, for: .normal)
        self.clipsToBounds = true
        self.layer.shadowColor = UIColor.red.cgColor
        self.layer.shadowRadius = 30
        self.layer.shadowOpacity = 0.8
        self.layer.borderWidth = 2.0;
    }
}
