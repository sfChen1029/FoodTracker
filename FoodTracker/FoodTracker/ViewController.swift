//
//  ViewController.swift
//  FoodTracker
//
//  Created by Steven Chen on 5/25/19.
//  Copyright © 2019 Steven Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
//MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
    }
//MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder() // hides the keyboard
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
        textField.text = nil
    }
    
//MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

