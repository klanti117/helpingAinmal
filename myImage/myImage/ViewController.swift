//
//  ViewController.swift
//  myImage
//
//  Created by Klanti Islam on 1/7/17.
//  Copyright © 2017 Klanti Islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    @IBAction func importedImage(_ sender: Any)
    {
        var image=UIImagePickerController()
        image.delegate=self
        image.sourceType=UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing=false
        self.present(image, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingImage image: UIImage!,
                               editingInfo : [NSObject : AnyObject])
    {
        print("Image selected")
        
        self.dismiss(animated: true, completion: nil)
        importedImage.image=image
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

