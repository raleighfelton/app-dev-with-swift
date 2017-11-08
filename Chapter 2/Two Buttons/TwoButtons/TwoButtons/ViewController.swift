//
//  ViewController.swift
//  TwoButtons
//
//  Created by Raleigh Felton on 11/3/17.
//  Copyright © 2017 Raleigh Felton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func setTextButtonTapped(_ sender: UIButton) {
       textLabel.text = textField.text
        textField.resignFirstResponder()
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        textField.text = ""
        textLabel.text = ""
        textField.becomeFirstResponder()
    }


}

