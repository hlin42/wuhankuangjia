//
//  ViewController.swift/
//  442proj
//
//  Created by Jie Chen on 9/16/18.
//  Copyright © 2018 Jie Chen. All rights reserved.
//
import AVFoundation
import UIKit
var Testing_String = ""

var audioPlayer: AVAudioPlayer!
class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    @IBOutlet weak var Main: UIButton!
    @IBOutlet weak var Camera: UIButton!
    @IBOutlet weak var Reward: UIButton!
    @IBOutlet weak var HowToPlay: UIButton!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var AddMission: UIButton!
    @IBOutlet weak var Map: UIButton!
    @IBOutlet weak var Achievements: UIButton!
    
    


    func playSoundWith(fileName: String, fileExtension: String) -> Void{
        let audioSourceURL: URL!
        audioSourceURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension)
        
        if (audioSourceURL == nil){
            print("cannot play")
        }
        else{
            do{
                audioPlayer = try AVAudioPlayer.init(contentsOf: audioSourceURL!)
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            }
            catch{
                print(error)
            }
        }
        
    }
    
    override func viewDidLoad() {
        
        if let x = UserDefaults.standard.object(forKey: "TheData") as? [Int : Mission_Storage]{
            Overall_Data_Storage = x
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //   9/23 set up the GUI for 4 buttons on the main screen
        //   Author: weijin
        Camera.setButtonGUI()
        Main.setButtonGUI()
        HowToPlay.setButtonGUI()
        Reward.setButtonGUI()
        Map.setButtonGUI()
        AddMission.setButtonGUI()
        Achievements.setButtonGUI()
    }
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func addMission(_ sender: Any) {
        playSoundWith(fileName:"buttonSound", fileExtension: "wav")
    }
    
    
    @IBAction func achievements(_ sender: Any) {
        playSoundWith(fileName:"buttonSound", fileExtension: "wav")
    }
    
    
    @IBAction func Map_Action(_ sender: Any) {
        playSoundWith(fileName:"buttonSound", fileExtension: "wav")
    }
    
    @IBAction func RewardAction(_ sender: UIButton) {
        playSoundWith(fileName:"buttonSound", fileExtension: "wav")
    }
    
    
    @IBAction func HowToPlayAction(_ sender: UIButton) {
        playSoundWith(fileName:"buttonSound", fileExtension: "wav")
    }
    
    @IBAction func CameraAction(_ sender: UIButton) {
        playSoundWith(fileName:"buttonSound", fileExtension: "wav")
        audioPlayer.stop()
        playSoundWith(fileName:"backgroundsoundEffect", fileExtension: "wav")
        audioPlayer.numberOfLoops = -1
        
        
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
        playSoundWith(fileName:"buttonSound", fileExtension: "wav")
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



extension UIColor {
    
    func rgb() -> Int? {
        var fRed : CGFloat = 0
        var fGreen : CGFloat = 0
        var fBlue : CGFloat = 0
        var fAlpha: CGFloat = 0
        if self.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha) {
            let iRed = Int(fRed * 255.0)
            let iGreen = Int(fGreen * 255.0)
            let iBlue = Int(fBlue * 255.0)
            let iAlpha = Int(fAlpha * 255.0)
            
            //  (Bits 24-31 are alpha, 16-23 are red, 8-15 are green, 0-7 are blue).
            let rgb = (iAlpha << 24) + (iRed << 16) + (iGreen << 8) + iBlue
            return rgb
        } else {
            // Could not extract RGBA components:
            return nil
        }
    }
}


//This function is used to set the 4 buttons GUI on the main screen
extension UIButton{
    func setButtonGUI(){
        self.backgroundColor=UIColor.blue
        self.layer.cornerRadius = self.frame.height/2.0
        self.setTitleColor(UIColor.white, for: .normal)
        self.clipsToBounds = true
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.shadowColor = UIColor.red.cgColor
        self.layer.shadowRadius = 30
        self.layer.shadowOpacity = 0.8
        self.layer.borderWidth = 2.0;
        //        self.backgroundColor = UIColor.red
        //        self.clipsToBounds = true
        //        self.layer.cornerRadius = self.frame.height/2.0
        //        self.layer.borderWidth = 2.0;
        //        self.layer.borderColor = UIColor.white.cgColor
        //
        //        self.layer.shadowOpacity = 1.0
        //        self.layer.shadowRadius = 1.0
        //        self.layer.shadowOffset = CGSize(width: -2, height: 2);
        
    }
}
