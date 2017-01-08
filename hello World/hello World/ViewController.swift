//
//  ViewController.swift
//  hello World
//
//  Created by Klanti Islam on 1/7/17.
//  Copyright © 2017 Klanti Islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //myCode
    
    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var output1: UITextField!
    @IBOutlet weak var output2: UITextField!
    @IBAction func action(_ sender: UIButton) {
        output2.text="A newborn Chinese water deer is so small it can almost be held in the palm of the hand."
    }
    
    //myCode
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

