//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Raleigh Felton on 11/1/17.
//  Copyright © 2017 Raleigh Felton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var button: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
 
    }
    
    

    @IBAction func buttonTapped(_ sender: Any) {
        print("button was tapped")
        
        if toggle.isOn {
            print("toggle is on")
        } else {
            print("toggle is off")
        }
        
        print("the slider value is \(slider.value)")
    }
    
    @IBAction func switchToggle(_ sender: UISwitch) {
        if sender.isOn {
            print("switch is on")
        } else {
            print("switch if off")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func textChanged(_ sender: UITextField) {
        
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

