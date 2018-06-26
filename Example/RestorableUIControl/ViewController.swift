//
//  ViewController.swift
//  RestorableUIControl
//
//  Created by yajamon on 06/26/2018.
//  Copyright (c) 2018 yajamon. All rights reserved.
//

import UIKit
import RestorableUIControl

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: RestorableTextField!
    @IBOutlet weak var mySwitch: RestorableSwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTextField.restoreByUserDefaults()
        mySwitch.restoreByUserDefaults()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tappedBackground(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
}

