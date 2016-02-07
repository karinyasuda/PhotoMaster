//
//  ViewController.swift
//  PhotoMaster
//
//  Created by Karin on 2016/02/06.
//  Copyright © 2016年 Karin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    
    @IBOutlet var photoimageview :UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func precentPikerController(sourceType: UIImagePickerControllerSourceType){
        if UIImagePickerController.isSourceTypeAvailable(sourceType){
            let picker = UIImagePickerController()
            
            picker.sourceType = sourceType
            
            picker.delegate = self
            
            self.presentViewController(picker, animated: true, completion: nil)
            
        
        }
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickerImage image:UIImage!,editingInfo:NSDictionary){
        self.dismissViewControllerAnimated(true,completion:nil)
        
        photoimageview.image = image
    
    }
    
    @IBAction func selectButtonTapped(sender:UIButton){
        let atertController = UIAlertController(title:"画像の表示",message: nil,preferredStyle: .ActionSheet)
        
    }
    

    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

