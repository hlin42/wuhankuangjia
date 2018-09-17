//
//  ViewController.swift
//  442proj
//
//  Created by Jie Chen on 9/16/18.
//  Copyright © 2018 Jie Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var Main: UIButton!
    @IBOutlet weak var Camera: UIButton!
    
    @IBOutlet weak var userImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func CameraAction(_ sender: UIButton) {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let imagepicker = UIImagePickerController()
                imagepicker.delegate = self
                imagepicker.allowsEditing = false
                imagepicker.sourceType = UIImagePickerControllerSourceType.camera
                self.present(imagepicker,animated: false,completion: nil)
        }
        else{
            let imagepicker = UIImagePickerController()
            imagepicker.delegate = self
            imagepicker.allowsEditing = false
            imagepicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            self.present(imagepicker,animated: false,completion: nil)
            
        }
        
    }
    @IBAction func MainAction(_ sender: UIButton) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated:true, completion:nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image=info[UIImagePickerControllerOriginalImage] as? UIImage {
            userImage.image = image
        }
        else{
            print("Error")
        }
        self.dismiss(animated: false
            , completion: nil)
    }
    
    
}

