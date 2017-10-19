//
//  ViewController.swift
//  ExampleUIControls
//
//  Created by Prakash Sachania on 10/18/17.
//  Copyright © 2017 Prakash Sachania. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startAgainButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var sentenceTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var appendSwitch: UISwitch!
    @IBOutlet weak var fontSizeSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayLabel.text = "To start, enter some text in the text field above and press return. You can then use switch and slider"
        
        fontSizeSlider.value = Float(displayLabel.font.pointSize)
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func donePressed(_ sender: UIButton) {
        appendReplaceText()
    }
    
    @IBAction func startAgainPressed(_ sender: UIButton) {
        displayLabel.text = ""
        sentenceTextField.text = ""
    }
    
    //Return key did not work
    @IBAction func sentenceEntered(_ sender: UITextField) {
        appendReplaceText()
    }
    
    @IBAction func appendSwitchSelected(_ sender: UISwitch) {
    }
    
    @IBAction func fontSizeChanging(_ sender: UISlider) {
        
        displayLabel.font = UIFont(name: displayLabel.font.fontName, size: CGFloat(sender.value.rounded()))
                
    }
    
    func appendReplaceText() {
        if !appendSwitch.isOn {
            displayLabel.text = ""
        }
        
        if sentenceTextField.text == nil {
            sentenceTextField.text = ""
        }
        
        displayLabel.text = displayLabel.text! + "\n" + sentenceTextField.text!
    }
    
}

